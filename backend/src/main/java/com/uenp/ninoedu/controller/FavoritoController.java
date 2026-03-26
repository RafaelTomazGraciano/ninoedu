package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.favorito.FavoritoRequestDTO;
import com.uenp.ninoedu.model.dto.favorito.FavoritoResponseDTO;
import com.uenp.ninoedu.services.FavoritoService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/favoritos")
public class    FavoritoController {

    private final FavoritoService favoritoService;

    @PostMapping()
    public ResponseEntity<FavoritoResponseDTO>  criaFavorito(@Valid @RequestBody FavoritoRequestDTO favoritoRequestDTO){
        FavoritoResponseDTO response = favoritoService.criarFavorito(favoritoRequestDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletaFavorito(@PathVariable Long id){
        favoritoService.deletarFavorito(id);
        return ResponseEntity.noContent().build();
    }



}
