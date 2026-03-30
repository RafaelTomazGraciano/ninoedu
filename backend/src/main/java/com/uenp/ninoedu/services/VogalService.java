package com.uenp.ninoedu.services;

import java.util.ArrayList;
import java.util.List;
import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.vogal.VogalResponseDTO;
import com.uenp.ninoedu.model.entity.Vogal;
import com.uenp.ninoedu.repository.VogalRepository;
import lombok.RequiredArgsConstructor;
import com.uenp.ninoedu.exception.BadRequestException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class VogalService {

    private final VogalRepository vogalRepository;

    @Transactional(readOnly = true)
    public List<VogalResponseDTO> listarVogais() {
        return vogalRepository.findAll().stream()
                .map(this::converterParaDTO)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public VogalResponseDTO buscarVogalPorId(Long id) throws ResourceNotFoundException {
        Vogal vogal = vogalRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Vogal não encontrada com o ID: " + id));
        return converterParaDTO(vogal);
    }

    @Transactional(readOnly = true)
    public Vogal buscarEntidadePorId(Long id) {
        return vogalRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Vogal não encontrada com o ID: " + id));
    }

    @Transactional(readOnly = true)
    public List<Long> mapearVogalSilabas(String vogalNome) throws BadRequestException {
        if (vogalNome == null || vogalNome.isBlank()) {
            throw new BadRequestException("A vogal é obrigatória.");
        }

        Vogal vogal = vogalRepository.findByVogal(vogalNome.toUpperCase())
                .orElseThrow(() -> new ResourceNotFoundException("Vogal '" + vogalNome + "' não encontrada."));

        return List.of(vogal.getId());
    }

    @Transactional(readOnly = true)
    public List<Long> mapearVogalPalavras(String vogalNome) throws BadRequestException {
        if (vogalNome == null || vogalNome.isBlank()) {
            throw new BadRequestException("A vogal é obrigatória.");
        }

        String vogal = vogalNome.toUpperCase();

        List<String> vogaisPermitidas = switch (vogal) {
            case "A" -> List.of("A");
            case "O" -> List.of("A", "O");
            case "U" -> List.of("A", "O", "U");
            case "I" -> List.of("A", "O", "U", "I");
            case "E" -> List.of("A", "O", "U", "I", "E");
            default  -> throw new BadRequestException("Vogal '" + vogalNome + "' inválida. Use A, E, I, O ou U.");
        };

        return vogalRepository.findAll().stream()
                .filter(v -> vogaisPermitidas.contains(v.getVogal()))
                .map(Vogal::getId)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public Long buscarIdPorNome(String vogalNome) throws BadRequestException {
        return vogalRepository.findAll().stream()
                .filter(v -> v.getVogal().equalsIgnoreCase(vogalNome))
                .map(Vogal::getId)
                .findFirst()
                .orElseThrow(() -> new BadRequestException("Vogal '" + vogalNome + "' não encontrada."));
    }

    private VogalResponseDTO converterParaDTO(Vogal vogal) throws ResourceNotFoundException{
        return new VogalResponseDTO(
                vogal.getId(),
                vogal.getVogal()
        );
    }

}
