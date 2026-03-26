package com.uenp.ninoedu.model.dto.aluno;

import com.uenp.ninoedu.model.enums.Estagio;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record AlunoRequestDTO(
        @NotBlank(message = "O nome é obrigatório")
        String nome,
        String codigo,
        @NotNull(message = "O herói é obrigatório")
        Long heroiId,
        @NotNull(message = "A vogal é obrigatória")
        Long vogalId,
        @NotNull(message = "O estágio é obrigatório")
        Estagio estagio,
        @NotNull(message = "O professorId é obrigatório")
        Long professorId
) {
}
