package com.uenp.ninoedu.model.dto.auth;

import com.uenp.ninoedu.model.enums.TipoUsuario;

public record RegistroResponseDTO(
        Long id,
        String nome,
        String email,
        String login,
        TipoUsuario tipoUsuario
) {
}
