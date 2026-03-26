package com.uenp.ninoedu.model.dto.silaba;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record SilabaRequestDTO(
        @NotNull(message = "Vogal id é obrigatório")
        Long vogalId,
        @NotBlank(message = "Sílaba é obrigatório")
        String silaba,
        @NotBlank(message = "Palavra é obrigatório")
        String palavra,
        @NotBlank(message = "Complemento é obrigatório")
        String complemento,
        @NotBlank(message = "URL de som é obrigatório")
        String som
) {
}
