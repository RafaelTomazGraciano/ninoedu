package com.uenp.ninoedu.model.dto.aluno;

import com.uenp.ninoedu.model.dto.heroi.HeroiResponseDTO;
import com.uenp.ninoedu.model.dto.professor.ProfessorResponseDTO;
import com.uenp.ninoedu.model.dto.vogal.VogalResponseDTO;
import com.uenp.ninoedu.model.enums.Estagio;

public record AlunoResponseDTO(
        Long id,
        String nome,
        String codigo,
        Estagio estagio,
        HeroiResponseDTO heroi,
        VogalResponseDTO vogal,
        ProfessorResponseDTO professor
) {
}
