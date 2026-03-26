package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.favorito.FavoritoRequestDTO;
import com.uenp.ninoedu.model.dto.favorito.FavoritoResponseDTO;
import com.uenp.ninoedu.model.dto.jogo.JogoResponseDTO;
import com.uenp.ninoedu.model.entity.Aluno;
import com.uenp.ninoedu.model.entity.Favorito;
import com.uenp.ninoedu.model.entity.Jogo;
import com.uenp.ninoedu.repository.AlunoRepository;
import com.uenp.ninoedu.repository.FavoritoRepository;
import com.uenp.ninoedu.repository.JogoRepository;
import lombok.RequiredArgsConstructor;
import com.uenp.ninoedu.exception.BadRequestException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class FavoritoService {

    private final FavoritoRepository favoritoRepository;
    private final AlunoRepository alunoRepository;
    private final JogoRepository jogoRepository;

    @Transactional(readOnly = true)
    public List<FavoritoResponseDTO> listarFavoritosPorAluno(Long alunoId) {
        if (!alunoRepository.existsById(alunoId)) {
            throw new ResourceNotFoundException("Aluno não encontrado com o ID: " + alunoId);
        }

        List<Favorito> favoritos = favoritoRepository.findByAlunoId(alunoId);
        return favoritos.stream()
                .map(this::converterParaDTO)
                .collect(Collectors.toList());
    }

    @Transactional
    public FavoritoResponseDTO criarFavorito(FavoritoRequestDTO dto) throws BadRequestException {
        // Buscar as entidades
        Aluno aluno = alunoRepository.findById(dto.alunoId())
                .orElseThrow(() -> new ResourceNotFoundException("Aluno não encontrado com o ID: " + dto.alunoId()));

        Jogo jogo = jogoRepository.findById(dto.jogoId())
                .orElseThrow(() -> new ResourceNotFoundException("Jogo não encontrado com o ID: " + dto.jogoId()));

        // Validação de Negócio (Não favoritar duas vezes)
        if (favoritoRepository.findByAlunoIdAndJogoId(dto.alunoId(), dto.jogoId()).isPresent()) {
            throw new BadRequestException("Este jogo já foi favoritado por este aluno");
        }

        // Criar e salvar
        Favorito novoFavorito = new Favorito();
        novoFavorito.setAluno(aluno);
        novoFavorito.setJogo(jogo);

        Favorito favoritoSalvo = favoritoRepository.save(novoFavorito);
        return converterParaDTO(favoritoSalvo);
    }

    @Transactional
    public void deletarFavorito(Long favoritoId) throws ResourceNotFoundException {
        if (!favoritoRepository.existsById(favoritoId)) {
            throw new ResourceNotFoundException("Registro de favorito não encontrado com o ID: " + favoritoId);
        }
        favoritoRepository.deleteById(favoritoId);
    }

    private FavoritoResponseDTO converterParaDTO(Favorito favorito) {
        Jogo jogo = favorito.getJogo();
        JogoResponseDTO jogoDTO = new JogoResponseDTO(
                jogo.getId(),
                jogo.getNome(),
                jogo.getDescricao(),
                jogo.getEstagio(),
                jogo.getImagem(),
                jogo.getUrl()
        );

        return new FavoritoResponseDTO(favorito.getId(), jogoDTO);
    }

}
