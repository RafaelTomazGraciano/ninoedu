package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.imagem.ImagemRequestDTO;
import com.uenp.ninoedu.model.dto.imagem.ImagemResponseDTO;
import com.uenp.ninoedu.model.dto.imagem.ImagemResumoDTO;
import com.uenp.ninoedu.model.enums.Estagio;
import com.uenp.ninoedu.services.ImagemService;
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
@RequestMapping("/api/imagens")
public class ImagemController {

    private final ImagemService imagemService;

    @GetMapping()
    public ResponseEntity<Page<ImagemResponseDTO>> listarImagens(
            @RequestParam(required = false) Estagio estagio,
            @RequestParam(required = false) Long entidadeId,
            Pageable pageable
    ) {
        return ResponseEntity.ok(imagemService.listarImagens(estagio, entidadeId, pageable));
    }

    @GetMapping("/resumo")
    public ResponseEntity<Page<ImagemResumoDTO>> listarResumo(
            @RequestParam(required = false) Estagio estagio,
            @RequestParam(required = false) Long entidadeId,
            Pageable pageable
    ) {
        return ResponseEntity.ok(imagemService.listarResumoImagens(estagio, entidadeId, pageable));
    }

    @PostMapping
    public ResponseEntity<Void> criarImagem(@Valid @RequestBody ImagemRequestDTO dto) {
        imagemService.criarImagem(dto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @GetMapping("/{id}")
    public ResponseEntity<ImagemResponseDTO> listarImagemPorId(@PathVariable Long id) {
        return ResponseEntity.ok(imagemService.buscarImagemPorId(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Void> atualizarImagem(@PathVariable Long id, @Valid @RequestBody ImagemRequestDTO dto) {
        imagemService.atualizarImagem(id, dto);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletarImagem(@PathVariable Long id) {
        imagemService.deletarImagem(id);
        return ResponseEntity.noContent().build();
    }

}
