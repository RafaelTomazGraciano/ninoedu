package com.uenp.ninoedu.model.dto.silaba;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

public record RecursoSilabaDTO(
        String palavra,
        String silaba,

        @JsonInclude(JsonInclude.Include.NON_EMPTY)
        List<ImagemSimplesDTO> imagens,

        String som,

        @JsonProperty("complemento_silaba")
        String complementoSilaba,

        @JsonInclude(JsonInclude.Include.NON_EMPTY)
        List<CenaDTO> cenas
) {
    public record CenaDTO(
            String cena,
            @JsonProperty("quantidade_certas") Integer quantidadeCertas,
            @JsonProperty("quantidade_erradas") Integer quantidadeErradas,

            @JsonInclude(JsonInclude.Include.NON_EMPTY)
            List<ImagemSimplesDTO> imagens,

            @JsonInclude(JsonInclude.Include.NON_EMPTY)
            List<FragmentoDTO> fragmentos
    ) {}

    @JsonInclude(JsonInclude.Include.NON_NULL)
    public record ImagemSimplesDTO(String imagem, String mascara) {}

    public record FragmentoDTO(String fragmento) {}
}