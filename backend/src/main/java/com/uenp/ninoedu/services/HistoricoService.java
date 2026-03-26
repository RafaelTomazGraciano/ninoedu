package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.historico.HistoricoRequestDTO;
import com.uenp.ninoedu.model.dto.historico.HistoricoResponseDTO;
import com.uenp.ninoedu.model.dto.jogo.JogoResponseDTO;
import com.uenp.ninoedu.model.entity.Aluno;
import com.uenp.ninoedu.model.entity.Historico;
import com.uenp.ninoedu.model.entity.Jogo;
import com.uenp.ninoedu.repository.AlunoRepository;
import com.uenp.ninoedu.repository.HistoricoRepository;
import com.uenp.ninoedu.repository.JogoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class HistoricoService {

    private final HistoricoRepository historicoRepository;
    private final AlunoRepository alunoRepository;
    private final JogoRepository jogoRepository;

    @Transactional(readOnly = true)
    public List<HistoricoResponseDTO> listarHistoricoPorAluno(Long alunoId) {
        if (!alunoRepository.existsById(alunoId)) {
            throw new ResourceNotFoundException("Aluno não encontrado com o ID: " + alunoId);
        }

        List<Historico> historicos = historicoRepository.findByAlunoId(alunoId);
        return historicos.stream()
                .map(this::converterParaDTO)
                .collect(Collectors.toList());
    }

    @Transactional
    public HistoricoResponseDTO criarHistorico(HistoricoRequestDTO dto) {
        // Buscar as entidades
        Aluno aluno = alunoRepository.findById(dto.alunoId())
                .orElseThrow(() -> new ResourceNotFoundException("Aluno não encontrado com o ID: " + dto.alunoId()));

        Jogo jogo = jogoRepository.findById(dto.jogoId())
                .orElseThrow(() -> new ResourceNotFoundException("Jogo não encontrado com o ID: " + dto.jogoId()));

        // Criar a nova entidade
        Historico novoHistorico = new Historico();
        novoHistorico.setAluno(aluno);
        novoHistorico.setJogo(jogo);
        novoHistorico.setMinutos(dto.minutos());
        novoHistorico.setSegundos(dto.segundos());
        novoHistorico.setConcluido(dto.concluido());
        novoHistorico.setPontos(dto.pontos());
        novoHistorico.setErros(dto.erros());

        // Salvar
        Historico historicoSalvo = historicoRepository.save(novoHistorico);
        return converterParaDTO(historicoSalvo);
    }

    private HistoricoResponseDTO converterParaDTO(Historico historico) {
        // Converte a entidade Jogo aninhada em um JogoResponseDTO
        Jogo jogo = historico.getJogo();
        JogoResponseDTO jogoDTO = new JogoResponseDTO(
                jogo.getId(),
                jogo.getNome(),
                jogo.getDescricao(),
                jogo.getEstagio(),
                jogo.getImagem(),
                jogo.getUrl()
        );

        return new HistoricoResponseDTO(
                historico.getId(),
                historico.getMinutos(),
                historico.getSegundos(),
                historico.getConcluido(),
                historico.getPontos(),
                historico.getErros(),
                jogoDTO,
                historico.getAluno().getId()
        );
    }

}
