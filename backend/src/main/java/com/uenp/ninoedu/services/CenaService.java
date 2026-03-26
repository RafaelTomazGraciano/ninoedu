package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.BadRequestException;
import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.cena.CenaRequestDTO;
import com.uenp.ninoedu.model.dto.cena.CenaResponseDTO;
import com.uenp.ninoedu.model.entity.Cena;
import com.uenp.ninoedu.model.enums.Estagio;
import com.uenp.ninoedu.repository.CenaRepository;
import com.uenp.ninoedu.repository.ImagemRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CenaService {

    private final CenaRepository cenaRepository;
    private final ImagemRepository imagemRepository;

    @Transactional
    public CenaResponseDTO criar(CenaRequestDTO dto) {
        Cena cena = new Cena();
        cena.setEntidadeId(dto.entidadeId());
        cena.setEstagio(dto.estagio());
        cena.setCena(dto.cena());
        cena.setQuantidadeCertas(dto.quantidadeCertas());
        cena.setQuantidadeErradas(dto.quantidadeErradas());

        cena = cenaRepository.save(cena);
        return converterParaDTO(cena);
    }

    @Transactional(readOnly = true)
    public CenaResponseDTO buscarPorId(Long id) {
        Cena cena = buscarCena(id);
        return converterParaDTO(cena);
    }

    @Transactional(readOnly = true)
    public List<CenaResponseDTO> listarTodas() {
        return cenaRepository.findAll().stream()
                .map(this::converterParaDTO)
                .collect(Collectors.toList());
    }

    @Transactional
    public CenaResponseDTO atualizar(Long id, CenaRequestDTO dto) {
        Cena cena = buscarCena(id);

        cena.setEntidadeId(dto.entidadeId());
        cena.setEstagio(dto.estagio());
        cena.setCena(dto.cena());
        cena.setQuantidadeCertas(dto.quantidadeCertas());
        cena.setQuantidadeErradas(dto.quantidadeErradas());

        cena = cenaRepository.save(cena);
        return converterParaDTO(cena);
    }

    @Transactional
    public void deletar(Long id) {
        Cena cena = buscarCena(id);

        // Validação: Impede a exclusão se houver imagens atreladas a esta cena
        if (imagemRepository.existsByCenaId(id)) {
            throw new BadRequestException(
                    "Não é possível deletar esta cena, pois existem imagens vinculadas a ela."
            );
        }

        cenaRepository.delete(cena);
    }

    // --- Métodos Auxiliares ---

    private Cena buscarCena(Long id) {
        return cenaRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Cena não encontrada com o ID: " + id));
    }

    private CenaResponseDTO converterParaDTO(Cena cena) {
        return new CenaResponseDTO(
                cena.getId(),
                cena.getEntidadeId(),
                cena.getEstagio(),
                cena.getCena(),
                cena.getQuantidadeCertas(),
                cena.getQuantidadeErradas()
        );
    }
}