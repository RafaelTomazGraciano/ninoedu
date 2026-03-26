package com.uenp.ninoedu.model.dto.auth;

import jakarta.validation.constraints.NotBlank;

public record AlunoLoginRequestDTO(
        @NotBlank(message = "O código é obrigatório")
        String codigo
) {
}
