package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.jogo.JogoRequestDTO;
import com.uenp.ninoedu.model.dto.jogo.JogoResponseDTO;
import com.uenp.ninoedu.model.entity.Jogo;
import com.uenp.ninoedu.model.enums.Estagio;
import com.uenp.ninoedu.repository.FavoritoRepository;
import com.uenp.ninoedu.repository.HistoricoRepository;
import com.uenp.ninoedu.repository.JogoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import com.uenp.ninoedu.exception.BadRequestException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class JogoService {

    private final JogoRepository jogoRepository;
    private final HistoricoRepository historicoRepository;
    private final FavoritoRepository favoritoRepository;

    @Transactional(readOnly = true)
    public Page<JogoResponseDTO> listarJogos(Estagio estagio, Pageable pageable) {
        Page<Jogo> jogos;
        if (estagio != null) {
            jogos = jogoRepository.findByEstagio(estagio, pageable);
        } else {
            jogos = jogoRepository.findAll(pageable);
        }
        return jogos.map(this::converterParaDTO);
    }

    @Transactional(readOnly = true)
    public JogoResponseDTO buscarJogoPorId(Long id) {
        Jogo jogo = jogoRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Jogo não encontrado com o ID: " + id));
        return converterParaDTO(jogo);
    }

    @Transactional
    public JogoResponseDTO criarJogo(JogoRequestDTO dto) throws BadRequestException {
        if (dto.nome() == null || dto.nome().isBlank()) {
            throw new BadRequestException("O nome do jogo não pode ser vazio");
        }

        Jogo novoJogo = new Jogo();
        novoJogo.setNome(dto.nome());
        novoJogo.setDescricao(dto.descricao());
        novoJogo.setEstagio(dto.estagio());
        novoJogo.setImagem(dto.imagem());
        novoJogo.setUrl(dto.url());

        Jogo jogoSalvo = jogoRepository.save(novoJogo);
        return converterParaDTO(jogoSalvo);
    }

    @Transactional
    public JogoResponseDTO atualizarJogo(Long id, JogoRequestDTO dto) throws BadRequestException {
        Jogo jogoExistente = jogoRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Jogo não encontrado com o ID: " + id));

        if (dto.nome() == null || dto.nome().isBlank()) {
            throw new BadRequestException("O nome do jogo não pode ser vazio");
        }

        jogoExistente.setNome(dto.nome());
        jogoExistente.setDescricao(dto.descricao());
        jogoExistente.setEstagio(dto.estagio());
        jogoExistente.setImagem(dto.imagem());
        jogoExistente.setUrl(dto.url());

        Jogo jogoAtualizado = jogoRepository.save(jogoExistente);
        return converterParaDTO(jogoAtualizado);
    }

    public Page<Jogo> listarRecomendados(String estagioStr, Pageable pageable) {
        try {
            Estagio estagio = Estagio.valueOf(estagioStr.toUpperCase());

            return jogoRepository.findAllByEstagioAndDeletadoFalse(estagio, pageable);

        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Estágio inválido: " + estagioStr);
        }
    }

    @Transactional
    public void deletarJogo(Long id) throws BadRequestException{
        if (!jogoRepository.existsById(id)) {
            throw new ResourceNotFoundException("Jogo não encontrado com o ID: " + id);
        }

        jogoRepository.deleteById(id);
    }

    private JogoResponseDTO converterParaDTO(Jogo jogo) {
        return new JogoResponseDTO(
                jogo.getId(),
                jogo.getNome(),
                jogo.getDescricao(),
                jogo.getEstagio(),
                jogo.getImagem(),
                jogo.getUrl()
        );
    }
}
