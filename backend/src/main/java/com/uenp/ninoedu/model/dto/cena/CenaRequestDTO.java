package com.uenp.ninoedu.model.dto.cena;

import com.uenp.ninoedu.model.enums.Estagio;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record CenaRequestDTO(
        @NotNull(message = "O ID da entidade (Sílaba/Palavra) é obrigatório.")
        Long entidadeId,

        @NotNull(message = "O estágio é obrigatório.")
        Estagio estagio,

        @NotBlank(message = "O caminho do arquivo da cena é obrigatório.")
        String cena,

        @NotNull(message = "A quantidade de sílabas certas é obrigatória.")
        Integer quantidadeCertas,

        @NotNull(message = "A quantidade de sílabas erradas é obrigatória.")
        Integer quantidadeErradas
) {}