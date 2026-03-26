package com.uenp.ninoedu.model.dto.palavra;

import com.uenp.ninoedu.model.dto.silaba.SilabaResponseDTO;

import java.util.List;

public record PalavraResponseDTO(
        Long id,
        String palavra,
        String som,
        List<PalavraSilabaResponseDTO> silabas
) {
    public record PalavraSilabaResponseDTO(
            Integer posicao,
            SilabaResponseDTO silaba
    ) {}
}
