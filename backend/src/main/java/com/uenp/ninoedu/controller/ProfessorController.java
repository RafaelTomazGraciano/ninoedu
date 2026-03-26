package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.aluno.AlunoResponseDTO;
import com.uenp.ninoedu.model.dto.professor.ProfessorRequestDTO;
import com.uenp.ninoedu.model.dto.professor.ProfessorResponseDTO;
import com.uenp.ninoedu.services.AlunoService;
import com.uenp.ninoedu.services.ProfessorService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/professores")
public class ProfessorController {

    private final ProfessorService professorService;
    private final AlunoService alunoService;

    @PostMapping()
    public ResponseEntity<ProfessorResponseDTO> criaProfessor(@Valid @RequestBody ProfessorRequestDTO dto){
        ProfessorResponseDTO response = professorService.criarProfessor(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProfessorResponseDTO> getProfessor(@PathVariable Long id){
        return ResponseEntity.ok(professorService.buscarProfessorPorId(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<ProfessorResponseDTO> atualizaProfessor(@PathVariable Long id, @Valid @RequestBody ProfessorRequestDTO dto){
        return ResponseEntity.ok(professorService.atualizarProfessor(id,dto));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletaProfessor(@PathVariable Long id){
        professorService.deletarProfessor(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/{id}/alunos")
    public ResponseEntity<List<AlunoResponseDTO>> getAlunos(@PathVariable Long id){
        return ResponseEntity.ok(alunoService.listarAlunosPorProfessor(id));
    }
}
