package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.instituicao.InstituicaoResponseDTO;
import com.uenp.ninoedu.model.dto.instituicao.InstituicaoUpdateRequestDTO;
import com.uenp.ninoedu.model.dto.instituicao.TrocarSenhaDTO;
import com.uenp.ninoedu.model.dto.professor.ProfessorResponseDTO;
import com.uenp.ninoedu.model.entity.Instituicao;
import com.uenp.ninoedu.services.InstituicaoService;
import com.uenp.ninoedu.services.ProfessorService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/instituicoes")
public class InstituicaoController {

    private final InstituicaoService instituicaoService;
    private final ProfessorService professorService;

    @PatchMapping("/{id}/trocar-senha")
    public ResponseEntity<Void> resetSenha(
            @PathVariable Long id,
            @RequestBody @Valid TrocarSenhaDTO dados
    ) {
        instituicaoService.trocarSenha(id, dados.novaSenha());
        return ResponseEntity.noContent().build();
    }

    @GetMapping()
    public ResponseEntity<Page<InstituicaoResponseDTO>> getListaInstituicoes(Pageable pageable) {
        Page<InstituicaoResponseDTO> pagina = instituicaoService.listarInstituicoes(pageable);
        return ResponseEntity.ok(pagina);
    }

    @GetMapping("/{id}")
    public ResponseEntity<InstituicaoResponseDTO> getInstituicao(@PathVariable Long id) {
        return ResponseEntity.ok(instituicaoService.buscarInstituicaoPorId(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Void> atualizaInstituicao(@PathVariable Long id, @Valid @RequestBody InstituicaoUpdateRequestDTO dto) {
        InstituicaoResponseDTO response = instituicaoService.atualizarInstituicao(id, dto);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/{id}/professores")
    public ResponseEntity<List<ProfessorResponseDTO>> getListaProfessores(@PathVariable Long id) {
        return ResponseEntity.ok(professorService.listarProfessorPorInstituicao(id));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletarInstituicao(@PathVariable Long id) {
        instituicaoService.deletarInstituicao(id);
        return ResponseEntity.noContent().build();
    }
}
