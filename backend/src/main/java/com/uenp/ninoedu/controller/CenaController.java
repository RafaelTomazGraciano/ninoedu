package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.cena.CenaRequestDTO;
import com.uenp.ninoedu.model.dto.cena.CenaResponseDTO;
import com.uenp.ninoedu.model.enums.Estagio;
import com.uenp.ninoedu.services.CenaService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/cenas")
@RequiredArgsConstructor
public class CenaController {

    private final CenaService cenaService;

    @PostMapping
    public ResponseEntity<CenaResponseDTO> criar(@RequestBody @Valid CenaRequestDTO dto) {
        CenaResponseDTO response = cenaService.criar(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @GetMapping("/{id}")
    public ResponseEntity<CenaResponseDTO> buscarPorId(@PathVariable Long id) {
        CenaResponseDTO response = cenaService.buscarPorId(id);
        return ResponseEntity.ok(response);
    }

    @GetMapping
    public ResponseEntity<List<CenaResponseDTO>> listarTodas() {
        List<CenaResponseDTO> response = cenaService.listarTodas();
        return ResponseEntity.ok(response);
    }

    @PutMapping("/{id}")
    public ResponseEntity<CenaResponseDTO> atualizar(
            @PathVariable Long id,
            @RequestBody @Valid CenaRequestDTO dto) {
        CenaResponseDTO response = cenaService.atualizar(id, dto);
        return ResponseEntity.ok(response);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletar(@PathVariable Long id) {
        cenaService.deletar(id);
        return ResponseEntity.noContent().build();
    }
}