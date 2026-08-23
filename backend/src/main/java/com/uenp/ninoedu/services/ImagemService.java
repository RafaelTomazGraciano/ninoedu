package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.BadRequestException;
import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.fragmento.FragmentoResponseDTO;
import com.uenp.ninoedu.model.dto.imagem.ImagemRequestDTO;
import com.uenp.ninoedu.model.dto.imagem.ImagemResponseDTO;
import com.uenp.ninoedu.model.dto.imagem.ImagemResumoDTO;
import com.uenp.ninoedu.model.entity.Fragmento;
import com.uenp.ninoedu.model.entity.Imagem;
import com.uenp.ninoedu.model.entity.Palavra;
import com.uenp.ninoedu.model.entity.Silaba;
import com.uenp.ninoedu.model.enums.TipoColorir;
import com.uenp.ninoedu.repository.CenaRepository;
import com.uenp.ninoedu.repository.FragmentoRepository;
import com.uenp.ninoedu.repository.ImagemRepository;
import com.uenp.ninoedu.repository.PalavraRepository;
import com.uenp.ninoedu.repository.SilabaRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ImagemService {

    private final ImagemRepository imagemRepository;
    private final FragmentoRepository fragmentoRepository;
    private final CenaRepository cenaRepository;
    private final SilabaRepository silabaRepository;
    private final PalavraRepository palavraRepository;

    @Transactional(readOnly = true)
    public Page<ImagemResponseDTO> listarImagens(Long silabaId, Long palavraId, Pageable pageable) {
        Page<Imagem> paginaImagens;

        if (silabaId != null) {
            paginaImagens = imagemRepository.findBySilabaId(silabaId, pageable);
        } else if (palavraId != null) {
            paginaImagens = imagemRepository.findByPalavraId(palavraId, pageable);
        } else {
            paginaImagens = imagemRepository.findAll(pageable);
        }

        return paginaImagens.map(this::converterParaDTO);
    }

    @Transactional(readOnly = true)
    public Page<ImagemResumoDTO> listarResumoImagens(Long silabaId, Long palavraId, Pageable pageable) {
        Page<Imagem> paginaImagens;

        if (silabaId != null) {
            paginaImagens = imagemRepository.findBySilabaId(silabaId, pageable);
        } else if (palavraId != null) {
            paginaImagens = imagemRepository.findByPalavraId(palavraId, pageable);
        } else {
            paginaImagens = imagemRepository.findAll(pageable);
        }

        return paginaImagens.map(img -> new ImagemResumoDTO(
                img.getId(),
                img.getDescricao(),
                img.getImagem()
        ));
    }

    @Transactional(readOnly = true)
    public ImagemResponseDTO buscarImagemPorId(Long id) {
        Imagem imagem = imagemRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Imagem não encontrada com o ID: " + id));
        return converterParaDTO(imagem);
    }

    @Transactional
    public ImagemResponseDTO criarImagem(ImagemRequestDTO dto) {
        Imagem novaImagem = new Imagem();

        aplicarEntidadeVinculada(novaImagem, dto.silabaId(), dto.palavraId());

        novaImagem.setImagem(dto.imagem());
        novaImagem.setMascara(dto.mascara());
        novaImagem.setDescricao(dto.descricao());
        novaImagem.setColorir(dto.colorir());
        novaImagem.setFormato(dto.formato());

        if (dto.cenaId() != null) {
            if (!cenaRepository.existsById(dto.cenaId())) {
                throw new ResourceNotFoundException("Cena não encontrada com o ID: " + dto.cenaId());
            }
            novaImagem.setCenaId(dto.cenaId());
        }

        Imagem imagemSalva = imagemRepository.save(novaImagem);
        return converterParaDTO(imagemSalva);
    }

    @Transactional
    public ImagemResponseDTO atualizarImagem(Long id, ImagemRequestDTO dto) {
        Imagem imagemExistente = imagemRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Imagem não encontrada com o ID: " + id));

        aplicarEntidadeVinculada(imagemExistente, dto.silabaId(), dto.palavraId());

        imagemExistente.setImagem(dto.imagem());
        imagemExistente.setMascara(dto.mascara());
        imagemExistente.setDescricao(dto.descricao());
        imagemExistente.setColorir(dto.colorir());
        imagemExistente.setFormato(dto.formato());

        if (dto.cenaId() != null) {
            if (!cenaRepository.existsById(dto.cenaId())) {
                throw new ResourceNotFoundException("Cena não encontrada com o ID: " + dto.cenaId());
            }
            imagemExistente.setCenaId(dto.cenaId());
        } else {
            imagemExistente.setCenaId(null); // Permite desvincular a imagem de uma cena caso o front envie null
        }

        Imagem imagemAtualizada = imagemRepository.save(imagemExistente);
        return converterParaDTO(imagemAtualizada);
    }

    @Transactional
    public void deletarImagem(Long id) {
        if (!imagemRepository.existsById(id)) {
            throw new ResourceNotFoundException("Imagem não encontrada com o ID: " + id);
        }

        long fragmentosCount = fragmentoRepository.countByImagemId(id);
        if (fragmentosCount > 0) {
            throw new BadRequestException(
                    "Não é possível deletar esta imagem, pois ela está associada a " +
                            fragmentosCount + " fragmento(s)"
            );
        }

        // Deletar a Imagem "pai"
        imagemRepository.deleteById(id);
    }

    @Transactional(readOnly = true)
    public List<ImagemResponseDTO> buscarImagensParaJogo(Long silabaId, TipoColorir tipoColorir, int quantImagens) {

        // Busca todas as imagens que batem com o critério
        List<Imagem> imagens = imagemRepository.findBySilabaIdAndColorir(silabaId, tipoColorir);

        Collections.shuffle(imagens);
        List<Imagem> imagensLimitadas = imagens.stream().limit(quantImagens).collect(Collectors.toList());

        // Converte para DTO
        return imagensLimitadas.stream().map(img -> {

            List<FragmentoResponseDTO> fragmentosDTO = null;

            // REGRA: Se for clique_colorir, CARREGA os fragmentos
            if (tipoColorir == TipoColorir.CLIQUE_COLORIR) {
                List<Fragmento> fragmentos = fragmentoRepository.findByImagemId(img.getId());
                fragmentosDTO = fragmentos.stream()
                        .map(f -> new FragmentoResponseDTO(f.getId(), f.getCaminho()))
                        .collect(Collectors.toList());
            }

            return montarResponseDTO(img, fragmentosDTO); // Pode ser null ou a lista de fragmentos
        }).collect(Collectors.toList());
    }

    // --- Métodos Auxiliares ---

    private void aplicarEntidadeVinculada(Imagem imagem, Long silabaId, Long palavraId) {
        if (silabaId == null && palavraId == null) {
            throw new BadRequestException("A imagem precisa estar vinculada a uma sílaba, a uma palavra, ou às duas.");
        }

        if (silabaId != null) {
            Silaba silaba = silabaRepository.findById(silabaId)
                    .orElseThrow(() -> new ResourceNotFoundException("Sílaba não encontrada com o ID: " + silabaId));
            imagem.setSilaba(silaba);
        } else {
            imagem.setSilaba(null);
        }

        if (palavraId != null) {
            Palavra palavra = palavraRepository.findById(palavraId)
                    .orElseThrow(() -> new ResourceNotFoundException("Palavra não encontrada com o ID: " + palavraId));
            imagem.setPalavra(palavra);
        } else {
            imagem.setPalavra(null);
        }
    }

    private ImagemResponseDTO converterParaDTO(Imagem imagem) {
        // Busca os fragmentos associados
        List<Fragmento> fragmentos = fragmentoRepository.findByImagemId(imagem.getId());

        // Converte os fragmentos para DTOs
        List<FragmentoResponseDTO> fragmentosDTO = fragmentos.stream()
                .map(frag -> new FragmentoResponseDTO(frag.getId(), frag.getCaminho()))
                .collect(Collectors.toList());

        return montarResponseDTO(imagem, fragmentosDTO);
    }

    private ImagemResponseDTO montarResponseDTO(Imagem imagem, List<FragmentoResponseDTO> fragmentosDTO) {
        return new ImagemResponseDTO(
                imagem.getId(),
                imagem.getSilaba() != null ? imagem.getSilaba().getId() : null,
                imagem.getPalavra() != null ? imagem.getPalavra().getId() : null,
                imagem.getImagem(),
                imagem.getMascara(),
                imagem.getDescricao(),
                imagem.getColorir(),
                imagem.getFormato(),
                imagem.getCenaId(),
                fragmentosDTO
        );
    }
}