package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.instituicao.InstituicaoResumoDTO;
import com.uenp.ninoedu.model.dto.professor.ProfessorRequestDTO;
import com.uenp.ninoedu.model.dto.professor.ProfessorResponseDTO;
import com.uenp.ninoedu.model.entity.Instituicao;
import com.uenp.ninoedu.model.entity.Professor;
import com.uenp.ninoedu.repository.AlunoRepository;
import com.uenp.ninoedu.repository.InstituicaoRepository;
import com.uenp.ninoedu.repository.ProfessorRepository;
import lombok.RequiredArgsConstructor;
import com.uenp.ninoedu.exception.BadRequestException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProfessorService {

    private final ProfessorRepository professorRepository;
    private final InstituicaoRepository instituicaoRepository;
    private final AlunoRepository alunoRepository;

    @Transactional(readOnly = true)
    public List<ProfessorResponseDTO> listarProfessorPorInstituicao(Long instituicaoId) throws ResourceNotFoundException {
        if(!instituicaoRepository.existsById(instituicaoId)){
            throw new ResourceNotFoundException("Instituição não encontrada com o ID: " + instituicaoId);
        }

        List<Professor> professores = professorRepository.findByInstituicaoId(instituicaoId);
        return professores.stream()
                .map(this::converterParaDTO)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public ProfessorResponseDTO buscarProfessorPorId(Long id){
        Professor professor = professorRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Professor não encontrado com o ID: " + id));
        return converterParaDTO(professor);
    }

    @Transactional
    public ProfessorResponseDTO criarProfessor(ProfessorRequestDTO professorRequestDTO){
        Instituicao instituicao = instituicaoRepository.findById(professorRequestDTO.instituicaoId())
                .orElseThrow(() -> new ResourceNotFoundException("Instituição não encontrada com o ID: " + professorRequestDTO.instituicaoId()));

        Professor novoProfessor = new Professor();
        novoProfessor.setNome(professorRequestDTO.nome());
        novoProfessor.setEmail(professorRequestDTO.email());
        novoProfessor.setImagem(professorRequestDTO.imagem());
        novoProfessor.setInstituicao(instituicao);

        Professor professorSalvo = professorRepository.save(novoProfessor);
        return converterParaDTO(professorSalvo);
    }

    @Transactional
    public ProfessorResponseDTO atualizarProfessor(Long id, ProfessorRequestDTO professorRequestDTO){
        Professor professorExistente = professorRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Professor não encontrado com o ID: " + id));

        professorExistente.setNome(professorRequestDTO.nome());
        professorExistente.setEmail(professorRequestDTO.email());
        professorExistente.setImagem(professorRequestDTO.imagem());

        Professor professorAtualizado = professorRepository.save(professorExistente);
        return converterParaDTO(professorAtualizado);
    }

    @Transactional
    public void deletarProfessor(Long id){
        if(!professorRepository.existsById(id)){
            throw new ResourceNotFoundException("Professor não encontrado com o ID: " + id);
        }

        long contagemAlunos = alunoRepository.countByProfessorId(id);
        if (contagemAlunos > 0) {
            throw new BadRequestException("Não é possível deletar este professor, pois ele possui " + contagemAlunos + " aluno(s) associado(s).");
        }

        professorRepository.deleteById(id);
    }

    public ProfessorResponseDTO converterParaDTO(Professor professor){
        InstituicaoResumoDTO instituicaoResumoDTO = new InstituicaoResumoDTO(
                professor.getInstituicao().getId(),
                professor.getInstituicao().getNome()
        );

        return new ProfessorResponseDTO(
                professor.getId(),
                professor.getNome(),
                professor.getImagem(),
                professor.getEmail(),
                instituicaoResumoDTO
        );
    }

}
