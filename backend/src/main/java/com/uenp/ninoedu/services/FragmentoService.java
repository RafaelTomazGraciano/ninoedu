package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.fragmento.FragmentoRequestDTO;
import com.uenp.ninoedu.model.dto.fragmento.FragmentoResponseDTO;
import com.uenp.ninoedu.model.entity.Fragmento;
import com.uenp.ninoedu.model.entity.Imagem;
import com.uenp.ninoedu.repository.FragmentoRepository;
import com.uenp.ninoedu.repository.ImagemRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class FragmentoService {

    private final FragmentoRepository fragmentoRepository;
    private final ImagemRepository imagemRepository;

    @Transactional(readOnly = true)
    public Page<FragmentoResponseDTO> listarFragmentos(Pageable pageable) {
        return fragmentoRepository.findAll(pageable)
                .map(this::converterParaDTO);
    }

    @Transactional
    public FragmentoResponseDTO criarFragmento(FragmentoRequestDTO dto) {
        // Buscar a Imagem "pai"
        Imagem imagem = imagemRepository.findById(dto.imagemId())
                .orElseThrow(() -> new ResourceNotFoundException("Imagem não encontrada com o ID: " + dto.imagemId()));

        // Criar o fragmento
        Fragmento novoFragmento = new Fragmento();
        novoFragmento.setCaminho(dto.caminho());
        novoFragmento.setImagem(imagem);

        // Salvar
        Fragmento fragmentoSalvo = fragmentoRepository.save(novoFragmento);
        return converterParaDTO(fragmentoSalvo);
    }

    @Transactional
    public FragmentoResponseDTO atualizarFragmento(Long id, FragmentoRequestDTO dto) {
        // Buscar o Fragmento
        Fragmento fragmentoExistente = fragmentoRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Fragmento não encontrado com o ID: " + id));

        // Buscar a nova Imagem "pai"
        Imagem imagem = imagemRepository.findById(dto.imagemId())
                .orElseThrow(() -> new ResourceNotFoundException("Imagem não encontrada com o ID: " + dto.imagemId()));

        // Atualizar
        fragmentoExistente.setCaminho(dto.caminho());
        fragmentoExistente.setImagem(imagem);

        // Salvar
        Fragmento fragmentoAtualizado = fragmentoRepository.save(fragmentoExistente);
        return converterParaDTO(fragmentoAtualizado);
    }

    @Transactional
    public void deletarFragmento(Long id) {
        if (!fragmentoRepository.existsById(id)) {
            throw new ResourceNotFoundException("Fragmento não encontrado com o ID: " + id);
        }
        fragmentoRepository.deleteById(id);
    }

    private FragmentoResponseDTO converterParaDTO(Fragmento fragmento) {
        return new FragmentoResponseDTO(
                fragmento.getId(),
                fragmento.getCaminho()
        );
    }

}


