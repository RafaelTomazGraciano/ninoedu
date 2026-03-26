package com.uenp.ninoedu.model.dto.professor;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record ProfessorRequestDTO(
        @NotBlank(message = "O nome é obrigatório")
        String nome,
        String imagem,
        String email,
        @NotNull(message = "Instituição necessária")
        Long instituicaoId
) {
}
