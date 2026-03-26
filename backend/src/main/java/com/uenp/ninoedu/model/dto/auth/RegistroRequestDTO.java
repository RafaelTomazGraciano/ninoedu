package com.uenp.ninoedu.model.dto.auth;

import com.uenp.ninoedu.model.enums.TipoUsuario;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public record RegistroRequestDTO(
        @NotBlank(message = "O nome é obrigatório")
        String nome,
        String telefone,
        @Email(message = "O formato do email é inválido")
        String email,
        @NotBlank(message = "O login é obrigatório")
        String login,
        @NotBlank(message = "A senha é obrigatória")
        @Size(min = 6, message = "A nova senha deve ter no mínimo 6 caracteres")
        String senha,
        @NotNull(message = "O tipo de usuário é obrigatório")
        TipoUsuario tipoUsuario
) {
}
