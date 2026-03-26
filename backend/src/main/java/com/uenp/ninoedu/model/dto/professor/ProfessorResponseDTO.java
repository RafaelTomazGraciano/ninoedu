package com.uenp.ninoedu.model.dto.professor;

import com.uenp.ninoedu.model.dto.instituicao.InstituicaoResumoDTO;

public record ProfessorResponseDTO(
        Long id,
        String nome,
        String imagem,
        String email,
        InstituicaoResumoDTO instituicao
){
}
