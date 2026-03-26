package com.uenp.ninoedu.model.dto.cena;

import com.uenp.ninoedu.model.enums.Estagio;

public record CenaResponseDTO(
        Long id,
        Long entidadeId,
        Estagio estagio,
        String cena,
        Integer quantidadeCertas,
        Integer quantidadeErradas
) {}