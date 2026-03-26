package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.BadRequestException;
import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.palavra.PalavraRequestDTO;
import com.uenp.ninoedu.model.dto.palavra.PalavraResponseDTO;
import com.uenp.ninoedu.model.dto.palavra.PalavraResumoDTO;
import com.uenp.ninoedu.model.dto.silaba.SilabaResponseDTO;
import com.uenp.ninoedu.model.entity.Palavra;
import com.uenp.ninoedu.model.entity.PalavraSilaba;
import com.uenp.ninoedu.model.entity.Silaba;
import com.uenp.ninoedu.model.enums.Estagio;
import com.uenp.ninoedu.repository.ImagemRepository;
import com.uenp.ninoedu.repository.PalavraRepository;
import com.uenp.ninoedu.repository.PalavraSilabaRepository;
import com.uenp.ninoedu.repository.SilabaRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class PalavraService {

    private final PalavraRepository palavraRepository;
    private final SilabaRepository silabaRepository;
    private final PalavraSilabaRepository palavraSilabaRepository;
    private final ImagemRepository imagemRepository;

    @Transactional(readOnly = true)
    public Page<PalavraResponseDTO> listarPalavras(Pageable pageable) {
        return palavraRepository.findAll(pageable).map(this::converterParaDTO);
    }

    @Transactional(readOnly = true)
    public Page<PalavraResumoDTO> listarResumoPalavras(Pageable pageable) {
        Page<Palavra> paginaPalavras = palavraRepository.findAll(pageable);

        return paginaPalavras.map(p -> new PalavraResumoDTO(p.getId(), p.getPalavra()));
    }

    @Transactional(readOnly = true)
    public PalavraResponseDTO buscarPalavraPorId(Long id) throws ResourceNotFoundException {
        Palavra palavra = palavraRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Palavra não encontrada com o ID: " + id));
        return converterParaDTO(palavra);
    }

    @Transactional
    public PalavraResponseDTO criarPalavra(PalavraRequestDTO dto) {
        // Criar e salvar a entidade "Pai" (Palavra)
        Palavra novaPalavra = new Palavra();
        novaPalavra.setPalavra(dto.palavra());
        novaPalavra.setSom(dto.som());
        Palavra palavraSalva = palavraRepository.save(novaPalavra);

        // Lidar com as associações de sílabas
        if (dto.silabas() != null) {
            for (PalavraRequestDTO.PalavraSilabaRequestDTO silabaDTO : dto.silabas()) {
                // Buscar a sílaba
                Silaba silaba = silabaRepository.findById(silabaDTO.silabaId())
                        .orElseThrow(() -> new ResourceNotFoundException("Sílaba não encontrada com o ID: " + silabaDTO.silabaId()));

                // Criar a entidade de ligação
                PalavraSilaba associacao = new PalavraSilaba();
                associacao.setPalavra(palavraSalva);
                associacao.setSilaba(silaba);
                associacao.setPosicao(silabaDTO.posicao());
                palavraSilabaRepository.save(associacao);
            }
        }
        return converterParaDTO(palavraSalva);
    }

    @Transactional
    public PalavraResponseDTO atualizarPalavra(Long id, PalavraRequestDTO dto) {
        // 1. Buscar a Palavra
        Palavra palavraExistente = palavraRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Palavra não encontrada com o ID: " + id));

        // 2. Atualizar campos simples
        palavraExistente.setPalavra(dto.palavra());
        palavraExistente.setSom(dto.som());
        Palavra palavraSalva = palavraRepository.save(palavraExistente);

        // 3. Deletar associações antigas
        List<PalavraSilaba> associacoesAntigas = palavraSilabaRepository.findByPalavraId(id);
        palavraSilabaRepository.deleteAll(associacoesAntigas);

        // 4. Criar novas associações (mesma lógica do criar)
        if (dto.silabas() != null) {
            for (PalavraRequestDTO.PalavraSilabaRequestDTO silabaDTO : dto.silabas()) {
                Silaba silaba = silabaRepository.findById(silabaDTO.silabaId())
                        .orElseThrow(() -> new ResourceNotFoundException("Sílaba não encontrada com o ID: " + silabaDTO.silabaId()));

                PalavraSilaba novaAssociacao = new PalavraSilaba();
                novaAssociacao.setPalavra(palavraSalva);
                novaAssociacao.setSilaba(silaba);
                novaAssociacao.setPosicao(silabaDTO.posicao());
                palavraSilabaRepository.save(novaAssociacao);
            }
        }
        return converterParaDTO(palavraSalva);
    }

    @Transactional
    public void deletarPalavra(Long id) {
        if (!palavraRepository.existsById(id)) {
            throw new ResourceNotFoundException("Palavra não encontrada com o ID: " + id);
        }

        long imagensCount = imagemRepository.countByEntidadeIdAndEstagioAndDeletadoFalse(id, Estagio.PALAVRA);
        if (imagensCount > 0) {
            throw new BadRequestException(
                    "Não é possível deletar esta palavra, pois ela está associada a " +
                            imagensCount + " imagens"
            );
        }

        // Deletar associações na tabela 'palavra_silaba'
        List<PalavraSilaba> associacoes = palavraSilabaRepository.findByPalavraId(id);
        palavraSilabaRepository.deleteAll(associacoes);

        // Deletar a palavra
        palavraRepository.deleteById(id);
    }

    public PalavraResponseDTO converterParaDTO(Palavra palavra) {
        // Buscar as associações
        List<PalavraSilaba> associacoes = palavraSilabaRepository.findByPalavraId(palavra.getId());

        // Converter as associações para o DTO de resposta aninhado
        List<PalavraResponseDTO.PalavraSilabaResponseDTO> silabasDTO = new ArrayList<>();
        if (associacoes != null) {
            silabasDTO = associacoes.stream()
                    .map(assoc -> new PalavraResponseDTO.PalavraSilabaResponseDTO(
                            assoc.getPosicao(),
                            // Converte a entidade Silaba interna em um SilabaResponseDTO
                            new SilabaResponseDTO(
                                    assoc.getSilaba().getId(),
                                    assoc.getSilaba().getSilaba(),
                                    assoc.getSilaba().getPalavra(),
                                    assoc.getSilaba().getComplemento(),
                                    assoc.getSilaba().getSom(),
                                    null // Otimização: Não carregamos a vogal da sílaba aqui
                            )
                    ))
                    // Ordena pela posição
                    .sorted(java.util.Comparator.comparing(PalavraResponseDTO.PalavraSilabaResponseDTO::posicao))
                    .collect(Collectors.toList());
        }

        // Montar o DTO final
        return new PalavraResponseDTO(
                palavra.getId(),
                palavra.getPalavra(),
                palavra.getSom(),
                silabasDTO
        );
    }

}
