package com.uenp.ninoedu.model.dto.palavra;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

import java.util.List;

public record PalavraRequestDTO(
        @NotBlank(message = "palavra é obrigatório")
        String palavra,
        @NotBlank(message = "Som é obrigatório")
        String som,
        List<PalavraSilabaRequestDTO> silabas
) {
    public record PalavraSilabaRequestDTO(
            @NotNull(message = "Silaba id é obrigatório")
            Long silabaId,
            @NotNull(message = "Posição da sílaba é obrigatório")
            Integer posicao
    ) {}
}
