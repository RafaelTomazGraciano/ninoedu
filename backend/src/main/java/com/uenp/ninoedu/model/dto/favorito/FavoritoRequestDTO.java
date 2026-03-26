package com.uenp.ninoedu.model.dto.favorito;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record FavoritoRequestDTO(
        @NotNull(message = "necessário id do aluno")
        Long alunoId,
        @NotNull(message = "necessário id do jogo")
        Long jogoId
) {
}
