package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.aluno.AlunoRequestDTO;
import com.uenp.ninoedu.model.dto.aluno.AlunoResponseDTO;
import com.uenp.ninoedu.model.dto.heroi.HeroiResponseDTO;
import com.uenp.ninoedu.model.dto.professor.ProfessorResponseDTO;
import com.uenp.ninoedu.model.dto.vogal.VogalResponseDTO;
import com.uenp.ninoedu.model.entity.*;
import com.uenp.ninoedu.repository.*;
import lombok.RequiredArgsConstructor;
import com.uenp.ninoedu.exception.BadRequestException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AlunoService {

    private final AlunoRepository alunoRepository;
    private final ProfessorRepository professorRepository;
    private final HeroiRepository heroiRepository;
    private final VogalRepository vogalRepository;
    private final FavoritoRepository favoritoRepository;

    // dependencia do ProfessorService
    private final ProfessorService professorService;

    @Transactional(readOnly = true)
    public List<AlunoResponseDTO> listarAlunosPorProfessor(Long professorId) throws ResourceNotFoundException {
        if (!professorRepository.existsById(professorId)) {
            throw new ResourceNotFoundException("Professor não encontrado com o ID: " + professorId);
        }

        List<Aluno> alunos = alunoRepository.findByProfessorId(professorId);
        return alunos.stream()
                .map(this::converterParaDTO)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public AlunoResponseDTO buscarAlunoPorId(Long id) {
        Aluno aluno = alunoRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Aluno não encontrado com o ID: " + id));
        return converterParaDTO(aluno);
    }

    @Transactional
    public AlunoResponseDTO criarAluno(AlunoRequestDTO dto) throws BadRequestException{
        // Validação
        if (alunoRepository.findByCodigo(dto.codigo()).isPresent()) {
            throw new BadRequestException("Este código '" + dto.codigo() + "' não pode ser usado");
        }

        Professor professor = buscarEntidadeProfessor(dto);
        Heroi heroi = buscarEntidadeHeroi(dto);
        Vogal vogal = buscarEntidadeVogal(dto);

        // Criar a nova entidade Aluno
        Aluno novoAluno = new Aluno();
        novoAluno.setNome(dto.nome());
        novoAluno.setCodigo(dto.codigo());
        novoAluno.setEstagio(dto.estagio());
        novoAluno.setProfessor(professor);
        novoAluno.setHeroi(heroi);
        novoAluno.setVogal(vogal);

        // Salvar
        Aluno alunoSalvo = alunoRepository.save(novoAluno);
        return converterParaDTO(alunoSalvo);
    }

    @Transactional
    public AlunoResponseDTO atualizarAluno(Long id, AlunoRequestDTO dto) throws BadRequestException{
        // Buscar Aluno
        Aluno alunoExistente = alunoRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Aluno não encontrado com o ID: " + id));

        // Validação de Negócio (Código único)
        if (!alunoExistente.getCodigo().equals(dto.codigo())) {
            Optional<Aluno> alunoComMesmoCodigo = alunoRepository.findByCodigo(dto.codigo());
            if (alunoComMesmoCodigo.isPresent()) {
                throw new BadRequestException("Este código '" + dto.codigo() + "' não pode ser usado");
            }
        }

        Professor professor = buscarEntidadeProfessor(dto);
        Heroi heroi = buscarEntidadeHeroi(dto);
        Vogal vogal = buscarEntidadeVogal(dto);

        // Atualizar
        alunoExistente.setNome(dto.nome());
        alunoExistente.setCodigo(dto.codigo());
        alunoExistente.setEstagio(dto.estagio());
        alunoExistente.setProfessor(professor);
        alunoExistente.setHeroi(heroi);
        alunoExistente.setVogal(vogal);

        // Salvar
        Aluno alunoAtualizado = alunoRepository.save(alunoExistente);
        return converterParaDTO(alunoAtualizado);
    }

    @Transactional
    public void deletarAluno(Long id) {
        if (!alunoRepository.existsById(id)) {
            throw new ResourceNotFoundException("Aluno não encontrado com o ID: " + id);
        }

        //Deleta os favoritos do aluno
        List<Favorito> favoritosDoAluno = favoritoRepository.findByAlunoId(id);
        if (!favoritosDoAluno.isEmpty()) {
            favoritoRepository.deleteAll(favoritosDoAluno);
        }

        //  Lógica de negócio: O que acontece com o histórico do aluno?

        // Deleta o aluno
        alunoRepository.deleteById(id);
    }

    private Professor buscarEntidadeProfessor(AlunoRequestDTO dto) throws ResourceNotFoundException {
        Professor professor = professorRepository.findById(dto.professorId())
                .orElseThrow(() -> new ResourceNotFoundException("Professor não encontrado com o ID: " + dto.professorId()));
        return professor;
    }

    private Heroi buscarEntidadeHeroi(AlunoRequestDTO dto) throws ResourceNotFoundException {
        Heroi heroi = heroiRepository.findById(dto.heroiId())
                .orElseThrow(() -> new ResourceNotFoundException("Herói não encontrado com o ID: " + dto.heroiId()));
        return heroi;
    }

    private Vogal buscarEntidadeVogal(AlunoRequestDTO dto) throws ResourceNotFoundException {
        Vogal vogal = vogalRepository.findById(dto.vogalId())
                .orElseThrow(() -> new ResourceNotFoundException("Vogal não encontrada com o ID: " + dto.vogalId()));
        return vogal;
    }

    private AlunoResponseDTO converterParaDTO(Aluno aluno){
        HeroiResponseDTO heroiDTO = new HeroiResponseDTO(
                aluno.getHeroi().getId(),
                aluno.getHeroi().getNome(),
                aluno.getHeroi().getIcone(),
                aluno.getHeroi().getBanner()
        );

        VogalResponseDTO vogalDTO = new VogalResponseDTO(
                aluno.getVogal().getId(),
                aluno.getVogal().getVogal()
        );

        ProfessorResponseDTO professorDTO = professorService.converterParaDTO(aluno.getProfessor());

        return new AlunoResponseDTO(
                aluno.getId(),
                aluno.getNome(),
                aluno.getCodigo(),
                aluno.getEstagio(),
                heroiDTO,
                vogalDTO,
                professorDTO
        );
    }
}
