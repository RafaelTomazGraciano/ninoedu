package com.uenp.ninoedu.model.dto.instituicao;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public record InstituicaoUpdateRequestDTO(
        @NotBlank(message = "O nome não pode estar em branco")
        String nome,

        String telefone,

        @Email(message = "O formato do email é inválido")
        String email
) {
}
