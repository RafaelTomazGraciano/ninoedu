package com.uenp.ninoedu.model.dto.heroi;

import jakarta.validation.constraints.NotBlank;

public record HeroiRequestDTO(
        @NotBlank(message = "O nome é obrigatório")
        String nome,
        @NotBlank(message = "O ícone é obrigatório")
        String icone,
        @NotBlank(message = "O banner é obrigatório")
        String banner
) {
}
