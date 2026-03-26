package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.heroi.HeroiRequestDTO;
import com.uenp.ninoedu.model.dto.heroi.HeroiResponseDTO;
import com.uenp.ninoedu.model.entity.Heroi;
import com.uenp.ninoedu.repository.AlunoRepository;
import com.uenp.ninoedu.repository.HeroiRepository;
import org.springframework.transaction.annotation.Transactional;
import lombok.RequiredArgsConstructor;
import com.uenp.ninoedu.exception.BadRequestException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class HeroiService {

    private final HeroiRepository heroiRepository;
    private final AlunoRepository alunoRepository;

    @Transactional(readOnly = true)
    public List<HeroiResponseDTO> listarHerois(){
        return heroiRepository.findAll().stream()
                .map(this::converterParaDTO)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public HeroiResponseDTO buscarHeroiPorId(Long id) throws ResourceNotFoundException{
        Heroi heroi = heroiRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Herói não encontrado com o ID: " + id));
        return converterParaDTO(heroi);
    }

    @Transactional
    public HeroiResponseDTO criarHeroi(HeroiRequestDTO heroiRequestDTO) throws BadRequestException{
        if(heroiRequestDTO.nome() == null || heroiRequestDTO.nome().isBlank()){
            throw new BadRequestException("O nome do herói não pode ser vazio");
        }

        Heroi novoHeroi = new Heroi();
        novoHeroi.setNome(heroiRequestDTO.nome());
        novoHeroi.setIcone(heroiRequestDTO.icone());
        novoHeroi.setBanner(heroiRequestDTO.banner());

        Heroi heroiSalvo = heroiRepository.save(novoHeroi);
        return converterParaDTO(heroiSalvo);
    }

    public HeroiResponseDTO atualizarHeroi(Long id, HeroiRequestDTO heroiRequestDTO){
        Heroi heroiExistente = heroiRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Herói não encontrado com o ID: " + id));

        if(heroiRequestDTO.nome() == null || heroiRequestDTO.nome().isBlank()){
            throw new BadRequestException("O nome do herói não pode ser vazio");
        }

        heroiExistente.setNome(heroiRequestDTO.nome());
        heroiExistente.setIcone(heroiRequestDTO.icone());
        heroiExistente.setBanner(heroiRequestDTO.banner());

        Heroi heroiAtualizado = heroiRepository.save(heroiExistente);
        return converterParaDTO(heroiAtualizado);
    }

    public void deletarHeroi(Long id) throws ResourceNotFoundException{
        if(!heroiRepository.existsById(id)){
            throw new ResourceNotFoundException("Herói não encontrado com o ID: " + id);
        }
        heroiRepository.deleteById(id);
    }

    private HeroiResponseDTO converterParaDTO(Heroi heroi){
        return new HeroiResponseDTO(
                heroi.getId(),
                heroi.getNome(),
                heroi.getIcone(),
                heroi.getBanner()
        );
    }

}
