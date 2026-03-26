package com.uenp.ninoedu.model.dto.silaba;

import com.uenp.ninoedu.model.dto.vogal.VogalResponseDTO;

public record SilabaResponseDTO(
        Long id,
        String silaba,
        String palavra,
        String complemento,
        String som,
        VogalResponseDTO vogal
) {
}
