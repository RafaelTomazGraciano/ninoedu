package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.exception.SenhaInvalidaException;
import com.uenp.ninoedu.model.dto.instituicao.InstituicaoResponseDTO;
import com.uenp.ninoedu.model.dto.instituicao.InstituicaoUpdateRequestDTO;
import com.uenp.ninoedu.model.dto.instituicao.TrocarSenhaDTO;
import com.uenp.ninoedu.model.entity.Instituicao;
import com.uenp.ninoedu.repository.InstituicaoRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import lombok.RequiredArgsConstructor;
import com.uenp.ninoedu.exception.BadRequestException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class InstituicaoService {

    private final InstituicaoRepository instituicaoRepository;
    private final PasswordEncoder passwordEncoder;

    @Transactional
    public void trocarSenha(Long idInstituicao, String novaSenha) {
        Instituicao instituicao = instituicaoRepository.findById(idInstituicao)
                .orElseThrow(() -> new RuntimeException("Instituição não encontrada"));

        // O Admin define a senha diretamente, sem checar a antiga
        instituicao.setSenha(passwordEncoder.encode(novaSenha));

        instituicaoRepository.save(instituicao);
    }

    @Transactional(readOnly = true)
    public Page<InstituicaoResponseDTO> listarInstituicoes(Pageable pageable) {
        Page<Instituicao> paginaInstituicoes = instituicaoRepository.findAll(pageable);
        return paginaInstituicoes.map(this::converterParaDTO);
    }

    @Transactional(readOnly = true)
    public InstituicaoResponseDTO buscarInstituicaoPorId(Long id) throws  ResourceNotFoundException {
        Instituicao instituicao = instituicaoRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Instituição não encontrada com o ID: " + id));
        return converterParaDTO(instituicao);
    }

    @Transactional
    public InstituicaoResponseDTO atualizarInstituicao(Long id, InstituicaoUpdateRequestDTO dto) throws BadRequestException {
        // Buscar
        Instituicao instituicaoExistente = instituicaoRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Instituição não encontrada com o ID: " + id));

        // Validar Email (se ele foi alterado)
        if (!instituicaoExistente.getEmail().equals(dto.email())) {
            Optional<Instituicao> comMesmoEmail = instituicaoRepository.findByEmail(dto.email());
            if (comMesmoEmail.isPresent() && !comMesmoEmail.get().getId().equals(id)) {
                throw new BadRequestException("O email '" + dto.email() + "' já está em uso por outra instituição");
            }
        }

        // Atualizar (não permitimos alterar login, senha ou tipo aqui)
        instituicaoExistente.setNome(dto.nome());
        instituicaoExistente.setTelefone(dto.telefone());
        instituicaoExistente.setEmail(dto.email());

        // Salvar
        Instituicao instituicaoAtualizada = instituicaoRepository.save(instituicaoExistente);
        return converterParaDTO(instituicaoAtualizada);
    }

    @Transactional
    public void deletarInstituicao(Long id) {
        if (!instituicaoRepository.existsById(id)) {
            throw new ResourceNotFoundException("Instituição não encontrada com o ID: " + id);
        }
        instituicaoRepository.deleteById(id);
    }

    private InstituicaoResponseDTO converterParaDTO(Instituicao instituicao) {
        return new InstituicaoResponseDTO(
                instituicao.getId(),
                instituicao.getNome(),
                instituicao.getTelefone(),
                instituicao.getEmail(),
                instituicao.getLogin(),
                instituicao.getTipoUsuario()
        );
    }

}
