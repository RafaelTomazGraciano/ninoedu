package com.uenp.ninoedu.model.dto.favorito;

import com.uenp.ninoedu.model.dto.aluno.AlunoResponseDTO;
import com.uenp.ninoedu.model.dto.jogo.JogoResponseDTO;

public record FavoritoResponseDTO(
        Long id,
        JogoResponseDTO jogo
) {
}
