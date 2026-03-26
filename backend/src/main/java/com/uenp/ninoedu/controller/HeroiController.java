package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.heroi.HeroiRequestDTO;
import com.uenp.ninoedu.model.dto.heroi.HeroiResponseDTO;
import com.uenp.ninoedu.services.HeroiService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/herois")
public class HeroiController {

    private final HeroiService heroiService;

    @GetMapping()
    public ResponseEntity<List<HeroiResponseDTO>> buscarHerois(){
        return ResponseEntity.ok(heroiService.listarHerois());
    }

    @PostMapping()
    public ResponseEntity<Void> criarHeroi (@Valid @RequestBody HeroiRequestDTO heroiRequestDTO){
        HeroiResponseDTO response = heroiService.criarHeroi(heroiRequestDTO);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @GetMapping("/{id}")
    public ResponseEntity<HeroiResponseDTO> buscaHeroiPorId(@PathVariable Long id){
        return ResponseEntity.ok(heroiService.buscarHeroiPorId(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Void> atualizaHeroi(@PathVariable Long id, @Valid @RequestBody HeroiRequestDTO heroiRequestDTO){
        heroiService.atualizarHeroi(id, heroiRequestDTO);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletaHeroi(@PathVariable Long id){
        heroiService.deletarHeroi(id);
        return ResponseEntity.noContent().build();
    }

}
