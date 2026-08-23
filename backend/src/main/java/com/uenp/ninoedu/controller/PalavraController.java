package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.palavra.PalavraRequestDTO;
import com.uenp.ninoedu.model.dto.palavra.PalavraResponseDTO;
import com.uenp.ninoedu.model.dto.palavra.PalavraResumoDTO;
import com.uenp.ninoedu.services.PalavraService;
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
@RequestMapping("/api/palavras")
public class PalavraController {

    private final PalavraService palavraService;

    @GetMapping()
    public ResponseEntity<Page<PalavraResponseDTO>> listarCompleto(Pageable pageable) {
        return ResponseEntity.ok(palavraService.listarPalavras(pageable));
    }

    @GetMapping("/resumo")
    public ResponseEntity<Page<PalavraResumoDTO>> listarResumo(Pageable pageable) {
        return ResponseEntity.ok(palavraService.listarResumoPalavras(pageable));
    }

    @PostMapping
    public ResponseEntity<PalavraResponseDTO> criarPalavra(@Valid @RequestBody PalavraRequestDTO dto) {
        PalavraResponseDTO response = palavraService.criarPalavra(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @GetMapping("/{id}")
    public ResponseEntity<PalavraResponseDTO> buscaPalavra(@PathVariable Long id){
        return ResponseEntity.ok(palavraService.buscarPalavraPorId(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<PalavraResponseDTO> atualizarPalavra(@PathVariable Long id, @Valid @RequestBody PalavraRequestDTO dto) {
        PalavraResponseDTO response = palavraService.atualizarPalavra(id, dto);
        return ResponseEntity.ok(response);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletarPalavra(@PathVariable Long id) {
        palavraService.deletarPalavra(id);
        return ResponseEntity.noContent().build();
    }
}