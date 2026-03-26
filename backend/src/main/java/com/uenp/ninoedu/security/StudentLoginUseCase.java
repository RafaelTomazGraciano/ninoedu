package com.uenp.ninoedu.security;

import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.entity.Aluno;
import com.uenp.ninoedu.repository.AlunoRepository;
import com.uenp.ninoedu.services.TokenService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class StudentLoginUseCase {

    private final AlunoRepository alunoRepository;
    private final TokenService tokenService;

    public String invoke(String code) {
        Aluno aluno = alunoRepository.findByCodigo(code)
                .orElseThrow(() -> new ResourceNotFoundException("Aluno não encontrado"));
        return tokenService.gerarToken(aluno);
    }
}