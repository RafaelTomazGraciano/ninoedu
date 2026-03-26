package com.uenp.ninoedu.model.dto.instituicao;

import com.uenp.ninoedu.model.enums.TipoUsuario;

public record InstituicaoResponseDTO(
        Long id,
        String nome,
        String telefone,
        String email,
        String login,
        TipoUsuario tipoUsuario
) {
}
