package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.silaba.SilabaRequestDTO;
import com.uenp.ninoedu.model.dto.silaba.SilabaResponseDTO;
import com.uenp.ninoedu.model.dto.silaba.SilabaResumoDTO;
import com.uenp.ninoedu.model.dto.vogal.VogalResponseDTO;
import com.uenp.ninoedu.model.entity.Silaba;
import com.uenp.ninoedu.model.entity.Vogal;
import com.uenp.ninoedu.model.enums.Estagio;
import com.uenp.ninoedu.repository.ImagemRepository;
import com.uenp.ninoedu.repository.PalavraSilabaRepository;
import com.uenp.ninoedu.repository.SilabaRepository;
import com.uenp.ninoedu.repository.VogalRepository;
import lombok.RequiredArgsConstructor;
import com.uenp.ninoedu.exception.BadRequestException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class SilabaService {

    private final SilabaRepository silabaRepository;
    private final VogalRepository vogalRepository;
    private final PalavraSilabaRepository palavraSilabaRepository;
    private final ImagemRepository imagemRepository;

    @Transactional(readOnly = true)
    public Page<SilabaResponseDTO> listarSilabas(Long vogalId, Pageable pageable) {
        Page<Silaba> silabas;
        if (vogalId != null) {
            silabas = silabaRepository.findByVogalId(vogalId, pageable);
        } else {
            silabas = silabaRepository.findAll(pageable);
        }
        return silabas.map(this::converterParaDTO);
    }

    @Transactional(readOnly = true)
    public Page<SilabaResumoDTO> listarResumoSilabas(Long vogalId, Pageable pageable) {
        Page<Silaba> paginaSilabas;

        if (vogalId != null) {
            paginaSilabas = silabaRepository.findByVogalId(vogalId, pageable);
        } else {
            paginaSilabas = silabaRepository.findAll(pageable);
        }

        return paginaSilabas.map(s -> new SilabaResumoDTO(s.getId(), s.getSilaba()));
    }

    @Transactional(readOnly = true)
    public SilabaResponseDTO buscarSilabaPorId(Long id) {
        Silaba silaba = silabaRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Sílaba não encontrada com o ID: " + id));
        return converterParaDTO(silaba);
    }

    @Transactional
    public SilabaResponseDTO criarSilaba(SilabaRequestDTO dto) {
        // Buscar a Vogal
        Vogal vogal = vogalRepository.findById(dto.vogalId())
                .orElseThrow(() -> new ResourceNotFoundException("Vogal não encontrada com o ID: " + dto.vogalId()));

        // Criar a entidade
        Silaba novaSilaba = new Silaba();
        novaSilaba.setVogal(vogal);
        novaSilaba.setSilaba(dto.silaba());
        novaSilaba.setPalavra(dto.palavra());
        novaSilaba.setComplemento(dto.complemento());
        novaSilaba.setSom(dto.som());

        // Salvar
        Silaba silabaSalva = silabaRepository.save(novaSilaba);
        return converterParaDTO(silabaSalva);
    }

    @Transactional
    public SilabaResponseDTO atualizarSilaba(Long id, SilabaRequestDTO dto) throws ResourceNotFoundException{
        // Buscar a Sílaba
        Silaba silabaExistente = silabaRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Sílaba não encontrada com o ID: " + id));

        // Buscar a Vogal
        Vogal vogal = vogalRepository.findById(dto.vogalId())
                .orElseThrow(() -> new ResourceNotFoundException("Vogal não encontrada com o ID: " + dto.vogalId()));

        // Atualizar
        silabaExistente.setVogal(vogal);
        silabaExistente.setSilaba(dto.silaba());
        silabaExistente.setPalavra(dto.palavra());
        silabaExistente.setComplemento(dto.complemento());
        silabaExistente.setSom(dto.som());

        // Salvar
        Silaba silabaAtualizada = silabaRepository.save(silabaExistente);
        return converterParaDTO(silabaAtualizada);
    }

    @Transactional
    public void deletarSilaba(Long id) {
        if (!silabaRepository.existsById(id)) {
            throw new ResourceNotFoundException("Sílaba não encontrada com o ID: " + id);
        }

        // Verificar se há palavras usando esta sílaba
        long palavrasCount = palavraSilabaRepository.countBySilabaId(id);
        if (palavrasCount > 0) {
            throw new BadRequestException(
                    "Não é possível deletar esta sílaba, pois ela está associada a " +
                            palavrasCount + " palavra(s)"
            );
        }

        // Verificar se há imagens usando esta sílaba
        long imagensCount = imagemRepository.countByEntidadeIdAndEstagioAndDeletadoFalse(
                id,
                Estagio.SILABA
        );
        if (imagensCount > 0) {
            throw new BadRequestException(
                    "Não é possível deletar esta sílaba, pois ela está associada a " +
                            imagensCount + " imagens"
            );
        }

        silabaRepository.deleteById(id);
    }

    private SilabaResponseDTO converterParaDTO(Silaba silaba) {
        VogalResponseDTO vogalDTO = new VogalResponseDTO(
                silaba.getVogal().getId(),
                silaba.getVogal().getVogal()
        );

        return new SilabaResponseDTO(
                silaba.getId(),
                silaba.getSilaba(),
                silaba.getPalavra(),
                silaba.getComplemento(),
                silaba.getSom(),
                vogalDTO
        );
    }

}
