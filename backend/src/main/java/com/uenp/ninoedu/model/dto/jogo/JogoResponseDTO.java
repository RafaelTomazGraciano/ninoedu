package com.uenp.ninoedu.model.dto.jogo;

import com.uenp.ninoedu.model.enums.Estagio;

public record JogoResponseDTO(
        Long id,
        String nome,
        String descricao,
        Estagio estagio,
        String imagem,
        String url
) {
}
