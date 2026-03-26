package com.uenp.ninoedu.model.dto.auth;

import com.uenp.ninoedu.model.enums.Estagio;

public record AlunoLoginResponseDTO(
        String token,
        AlunoAuthDTO aluno
) {
    public record AlunoAuthDTO(
            Long id,
            String nome,
            String codigo,
            Estagio estagio,
            String nomeProfessor,
            String nomeHeroi
    ) {}
}
