package com.uenp.ninoedu.model.dto.imagem;

import com.uenp.ninoedu.model.dto.fragmento.FragmentoResponseDTO;
import com.uenp.ninoedu.model.enums.Estagio;
import com.uenp.ninoedu.model.enums.FormatoImagem;
import com.uenp.ninoedu.model.enums.TipoColorir;

import java.util.List;

public record ImagemResponseDTO(
        Long id,
        Estagio estagio,
        Long entidadeId,
        String imagem,
        String mascara,
        String descricao,
        TipoColorir colorir,
        FormatoImagem formato,
        Long cenaId,
        List<FragmentoResponseDTO> fragmentos
) {
}
