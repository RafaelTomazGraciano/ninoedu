package com.uenp.ninoedu.model.dto.palavra;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.List;

public record RecursoPalavraDTO(
        String palavra,
        String som,

        @JsonInclude(JsonInclude.Include.NON_EMPTY)
        List<ImagemPalavraDTO> imagens,

        List<SilabaPalavraDTO> silabas
) {
    public record ImagemPalavraDTO(String imagem) {}

    public record SilabaPalavraDTO(
            Integer posicao,
            String silaba,
            String som
    ) {}
}