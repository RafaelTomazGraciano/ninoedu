package com.uenp.ninoedu.model.dto.instituicao;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public record TrocarSenhaDTO(
        @NotBlank
        @Size(min = 6)
        String novaSenha
) {
}