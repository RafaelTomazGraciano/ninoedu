package com.uenp.ninoedu.model.dto.imagem;

import com.uenp.ninoedu.model.enums.Estagio;
import com.uenp.ninoedu.model.enums.FormatoImagem;
import com.uenp.ninoedu.model.enums.TipoColorir;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record ImagemRequestDTO(
        @NotNull(message = "Estágio é obrigatório")
        Estagio estagio,
        @NotNull(message = "Entidade id é obrigatório")
        Long entidadeId,
        @NotBlank(message = "URL imagem é obrigatório")
        String imagem,
        String mascara,
        String descricao,
        @NotNull(message = "Tipo Colorir é obrigatório")
        TipoColorir colorir,
        @NotNull(message = "Formato Imagem é obrigatório")
        FormatoImagem formato,
        Long cenaId
) {
}
