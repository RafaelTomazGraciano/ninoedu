package com.uenp.ninoedu.model.dto.historico;

public record HistoricoRequestDTO(
        Long alunoId,
        Long jogoId,
        Integer minutos,
        Integer segundos,
        Boolean concluido,
        Integer pontos,
        Integer erros
) {
}
