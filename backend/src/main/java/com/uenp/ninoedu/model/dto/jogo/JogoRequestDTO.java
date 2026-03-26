package com.uenp.ninoedu.model.dto.jogo;

import com.uenp.ninoedu.model.enums.Estagio;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record JogoRequestDTO(
        @NotBlank(message = "O nome é obrigatório")
        String nome,
        @NotBlank(message = "A descrição é obrigatório")
        String descricao,
        @NotNull(message = "O estágio é obrigatório")
        Estagio estagio,
        @NotBlank(message = "A imagem é obrigatório")
        String imagem,
        @NotBlank(message = "A url é obrigatório")
        String url
) {
}
