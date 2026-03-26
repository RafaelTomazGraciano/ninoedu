package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.fragmento.FragmentoRequestDTO;
import com.uenp.ninoedu.model.dto.fragmento.FragmentoResponseDTO;
import com.uenp.ninoedu.services.FragmentoService;
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
@RequestMapping("/api/fragmentos")
public class FragmentoController {

    private final FragmentoService fragmentoService;

    @GetMapping
    public ResponseEntity<Page<FragmentoResponseDTO>> listaFragmentos(Pageable pageable) {
        return ResponseEntity.ok(fragmentoService.listarFragmentos(pageable));
    }

    @PostMapping
    public ResponseEntity<Void> criarFragmento(@Valid @RequestBody FragmentoRequestDTO dto) {
        fragmentoService.criarFragmento(dto);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @PutMapping("/{id}")
    public ResponseEntity<Void> atualizaFragmento(@PathVariable Long id, @Valid @RequestBody FragmentoRequestDTO dto) {
        fragmentoService.atualizarFragmento(id, dto);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletaFragmento(@PathVariable Long id) {
        fragmentoService.deletarFragmento(id);
        return ResponseEntity.noContent().build();
    }

}
