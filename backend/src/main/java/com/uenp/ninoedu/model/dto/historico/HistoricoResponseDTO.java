package com.uenp.ninoedu.model.dto.historico;

import com.uenp.ninoedu.model.dto.jogo.JogoResponseDTO;

public record HistoricoResponseDTO(
        Long id,
        Integer minutos,
        Integer segundos,
        Boolean concluido,
        Integer pontos,
        Integer erros,
        JogoResponseDTO jogo,
        Long alunoId
) {
}
