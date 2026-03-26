package com.uenp.ninoedu.security;

import com.uenp.ninoedu.repository.AlunoRepository;
import com.uenp.ninoedu.repository.InstituicaoRepository;
import com.uenp.ninoedu.services.TokenService;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Component
@RequiredArgsConstructor
public class SecurityFilter extends OncePerRequestFilter {

    private final TokenService tokenService;
    private final InstituicaoRepository instituicaoRepository;
    private final AlunoRepository alunoRepository;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        var token = this.recoverToken(request);

        if (token != null) {
            // Valida o token e recupera o subject (login ou código)
            var subjectOptional = tokenService.validateToken(token);

            if (subjectOptional.isPresent()) {
                String login = subjectOptional.get();
                UserDetails userDetails = null;

                // Tenta encontrar Instituição pelo login
                var instituicaoOptional = instituicaoRepository.findByLogin(login);

                if (instituicaoOptional.isPresent()) {
                    userDetails = instituicaoOptional.get();
                } else {
                    // Se não achou Instituição, tenta encontrar Aluno pelo código
                    var alunoOptional = alunoRepository.findByCodigo(login);

                    if (alunoOptional.isPresent()) {
                        userDetails = alunoOptional.get();
                    }
                }

                // Se encontrou alguém (Instituição OU Aluno), autentica no Spring
                if (userDetails != null) {
                    var authentication = new UsernamePasswordAuthenticationToken(
                            userDetails,
                            null,
                            userDetails.getAuthorities()
                    );
                    SecurityContextHolder.getContext().setAuthentication(authentication);
                }
            }
        }
        filterChain.doFilter(request, response);
    }

    private String recoverToken(HttpServletRequest request) {
        var authHeader = request.getHeader("Authorization");
        if (authHeader == null) return null;
        return authHeader.replace("Bearer ", "");
    }
}