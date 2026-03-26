package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.silaba.SilabaRequestDTO;
import com.uenp.ninoedu.model.dto.silaba.SilabaResponseDTO;
import com.uenp.ninoedu.model.dto.silaba.SilabaResumoDTO;
import com.uenp.ninoedu.services.SilabaService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/silabas")
public class SilabaController {

    private final SilabaService  silabaService;

    @GetMapping()
    public ResponseEntity<Page<SilabaResponseDTO>> buscaSilabas(
            @RequestParam(required = false) Long vogalId,
            Pageable pageable
    ) {
        return ResponseEntity.ok(silabaService.listarSilabas(vogalId, pageable));
    }

    @GetMapping("/resumo")
    public ResponseEntity<Page<SilabaResumoDTO>> listarResumo(
            @RequestParam(required = false) Long vogalId,
            Pageable pageable
    ) {
        return ResponseEntity.ok(silabaService.listarResumoSilabas(vogalId, pageable));
    }

    @PostMapping()
    public ResponseEntity<Void> criarSilaba(@Valid @RequestBody SilabaRequestDTO dto){
        SilabaResponseDTO response = silabaService.criarSilaba(dto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @GetMapping("/{id}")
    public ResponseEntity<SilabaResponseDTO> buscaSilaba(@PathVariable Long id){
        return ResponseEntity.ok(silabaService.buscarSilabaPorId(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Void> atualizaSilaba(@PathVariable Long id, @Valid @RequestBody SilabaRequestDTO dto){
        silabaService.atualizarSilaba(id, dto);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletaSilaba(@PathVariable Long id){
        silabaService.deletarSilaba(id);
        return ResponseEntity.noContent().build();
    }
}
