package com.uenp.ninoedu.services;

import com.uenp.ninoedu.exception.ResourceNotFoundException;
import com.uenp.ninoedu.model.dto.auth.AlunoLoginRequestDTO;
import com.uenp.ninoedu.model.dto.auth.AlunoLoginResponseDTO;
import com.uenp.ninoedu.model.dto.auth.RegistroRequestDTO;
import com.uenp.ninoedu.model.dto.auth.RegistroResponseDTO;
import com.uenp.ninoedu.model.entity.Aluno;
import com.uenp.ninoedu.model.entity.Instituicao;
import com.uenp.ninoedu.repository.AlunoRepository;
import com.uenp.ninoedu.repository.InstituicaoRepository;
import org.springframework.transaction.annotation.Transactional;
import lombok.RequiredArgsConstructor;
import com.uenp.ninoedu.exception.BadRequestException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.swing.*;

@Service
@RequiredArgsConstructor
public class AutenticacaoService {

    private final InstituicaoRepository instituicaoRepository;
    private final AlunoRepository alunoRepository;
    private final PasswordEncoder passwordEncoder;
    private final TokenService tokenService;

    @Transactional
    public RegistroResponseDTO registrarInstituicao(RegistroRequestDTO dto) throws BadRequestException {
        if(instituicaoRepository.findByLogin(dto.login()).isPresent()){
            throw new BadRequestException("Este login já está em uso");
        }
        if(instituicaoRepository.findByEmail(dto.email()).isPresent()){
            throw new BadRequestException("Este email já está em uso");
        }

        //criar entidade
        Instituicao novaInstituicao = new Instituicao();
        novaInstituicao.setNome(dto.nome());
        novaInstituicao.setTelefone(dto.telefone());
        novaInstituicao.setEmail(dto.email());
        novaInstituicao.setLogin(dto.login());

        //criptografia e senha
        novaInstituicao.setSenha(passwordEncoder.encode(dto.senha()));
        novaInstituicao.setTipoUsuario(dto.tipoUsuario());

        //salva no banco
        Instituicao instituicaoSalva = instituicaoRepository.save(novaInstituicao);

        //retorna dto de resposta
        return new RegistroResponseDTO(
                instituicaoSalva.getId(),
                instituicaoSalva.getNome(),
                instituicaoSalva.getEmail(),
                instituicaoSalva.getLogin(),
                instituicaoSalva.getTipoUsuario()
        );
    }

    @Transactional(readOnly = true)
    public AlunoLoginResponseDTO loginAluno(AlunoLoginRequestDTO dto){
        //busca aluno
        Aluno aluno = alunoRepository.findByCodigo(dto.codigo())
                .orElseThrow(() -> new ResourceNotFoundException("Aluno não encontrado com este código"));

        //gerar o token
        String token = tokenService.gerarToken(aluno);

        //montar dto de resposta
        AlunoLoginResponseDTO.AlunoAuthDTO alunoAuthDTO = new AlunoLoginResponseDTO.AlunoAuthDTO(
                aluno.getId(),
                aluno.getNome(),
                aluno.getCodigo(),
                aluno.getEstagio(),
                aluno.getProfessor().getNome(),
                aluno.getHeroi().getNome()
        );

        return new AlunoLoginResponseDTO(token, alunoAuthDTO);
    }
}
