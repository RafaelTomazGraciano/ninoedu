package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.jogo.JogoRequestDTO;
import com.uenp.ninoedu.model.dto.jogo.JogoResponseDTO;
import com.uenp.ninoedu.model.entity.Jogo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import com.uenp.ninoedu.model.enums.Estagio;
import com.uenp.ninoedu.services.JogoService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/jogos")
public class JogoController {

    private final JogoService jogoService;

    @PostMapping()
    public ResponseEntity<Void> criarJogo(@Valid @RequestBody JogoRequestDTO jogo){
        jogoService.criarJogo(jogo);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    @GetMapping()
    public ResponseEntity<Page<JogoResponseDTO>> listarJogos(@RequestParam(required = false) Estagio estagio, Pageable pageable){
        return ResponseEntity.ok(jogoService.listarJogos(estagio, pageable));
    }

    @GetMapping("/{id}")
    public ResponseEntity<JogoResponseDTO> buscarJogo(@PathVariable Long id){
        return ResponseEntity.ok(jogoService.buscarJogoPorId(id));
    }

    @GetMapping("/recomendados")
    public ResponseEntity<Page<Jogo>> listRecommendedGames(
            @RequestParam(value = "stage") String stage,
            @PageableDefault(size = 10, sort = "nome") Pageable pageable
    ) {
        return ResponseEntity.ok(jogoService.listarRecomendados(stage, pageable));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Void> atualizaJogo(@PathVariable Long id, @RequestBody JogoRequestDTO jogo){
        jogoService.atualizarJogo(id, jogo);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletaJogo(@PathVariable Long id){
        jogoService.deletarJogo(id);
        return ResponseEntity.noContent().build();
    }
}
