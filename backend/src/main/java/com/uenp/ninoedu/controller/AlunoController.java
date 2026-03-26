package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.aluno.AlunoRequestDTO;
import com.uenp.ninoedu.model.dto.aluno.AlunoResponseDTO;
import com.uenp.ninoedu.model.dto.favorito.FavoritoResponseDTO;
import com.uenp.ninoedu.model.dto.historico.HistoricoResponseDTO;
import com.uenp.ninoedu.services.AlunoService;
import com.uenp.ninoedu.services.FavoritoService;
import com.uenp.ninoedu.services.HistoricoService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/alunos")
public class AlunoController {

    private final AlunoService alunoService;
    private final HistoricoService historicoService;
    private final FavoritoService favoritoService;

    @PostMapping()
    public ResponseEntity<AlunoResponseDTO> criaAluno(@Valid @RequestBody AlunoRequestDTO dto) {
        AlunoResponseDTO response = alunoService.criarAluno(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @GetMapping("/{id}")
    public ResponseEntity<AlunoResponseDTO> getAluno(@PathVariable Long id){
        return ResponseEntity.ok(alunoService.buscarAlunoPorId(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<AlunoResponseDTO> atualizaAluno(@PathVariable Long id, @RequestBody AlunoRequestDTO dto){
        return ResponseEntity.ok(alunoService.atualizarAluno(id, dto));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletaAluno(@PathVariable Long id){
        alunoService.deletarAluno(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/{id}/historicos")
    public ResponseEntity<List<HistoricoResponseDTO>> getHistoricos(@PathVariable Long id){
        return ResponseEntity.ok(historicoService.listarHistoricoPorAluno(id));
    }

    @GetMapping("/{id}/favoritos")
    public ResponseEntity<List<FavoritoResponseDTO>> getFavoritos(@PathVariable Long id){
        return ResponseEntity.ok(favoritoService.listarFavoritosPorAluno(id));
    }
}
