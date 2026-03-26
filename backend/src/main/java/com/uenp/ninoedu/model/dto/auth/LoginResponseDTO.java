package com.uenp.ninoedu.model.dto.auth;

import com.uenp.ninoedu.model.enums.TipoUsuario;

public record LoginResponseDTO (
        String token,
        InstituicaoAuthDTO instituicao
) {
    public record InstituicaoAuthDTO(
            Long id,
            String nome,
            String email,
            TipoUsuario tipoUsuario
    ) {}
}
