package com.uenp.ninoedu.controller;

import com.auth0.jwt.JWT;
import com.uenp.ninoedu.model.dto.auth.*;
import com.uenp.ninoedu.model.entity.Instituicao;
import com.uenp.ninoedu.services.AutenticacaoService;
import com.uenp.ninoedu.services.TokenService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/auth")
public class AutenticacaoController {

    private final AuthenticationManager authenticationManager;
    private final TokenService tokenService;
    private final AutenticacaoService autenticacaoService;

    @PostMapping("/login")
    public ResponseEntity<LoginResponseDTO> loginInstituicao(@Valid @RequestBody LoginRequestDTO loginRequestDTO) {
        var usernamePassword = new UsernamePasswordAuthenticationToken(
                loginRequestDTO.login(),
                loginRequestDTO.senha()
        );
        var auth = this.authenticationManager.authenticate(usernamePassword);
        var instituicao = (Instituicao) auth.getPrincipal();

        var token = tokenService.gerarToken(instituicao);

        var instituicaoDTO = new LoginResponseDTO.InstituicaoAuthDTO(
                instituicao.getId(),
                instituicao.getNome(),
                instituicao.getEmail(),
                instituicao.getTipoUsuario()
        );

        return ResponseEntity.ok(new LoginResponseDTO(token, instituicaoDTO));
    }

    @PostMapping("/cadastro")
    public ResponseEntity<RegistroResponseDTO> cadastrarInstituicao(@Valid @RequestBody RegistroRequestDTO dto) {
        RegistroResponseDTO response = autenticacaoService.registrarInstituicao(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @PostMapping("/aluno/login")
    public ResponseEntity<AlunoLoginResponseDTO> loginAluno(@Valid @RequestBody AlunoLoginRequestDTO dto) {
        AlunoLoginResponseDTO response = autenticacaoService.loginAluno(dto);
        return ResponseEntity.ok(response);
    }
}
