package com.uenp.ninoedu.security;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.stereotype.Component;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import java.util.List;

@Component
@Configuration
@EnableWebSecurity
public class SecurityConfigurations {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity, SecurityFilter securityFilter) throws Exception {
        return httpSecurity
                .csrf(AbstractHttpConfigurer::disable)
                .cors(cors -> cors.configurationSource(corsConfigurationSource()))
                .sessionManagement(session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .authorizeHttpRequests(authorize -> authorize

                        // APENAS PARA TESTE
                        .requestMatchers(HttpMethod.GET, "/api/recursos/**").permitAll()

//                        // ========== ENDPOINTS PÚBLICOS ==========
//                        .requestMatchers(HttpMethod.POST, "/api/auth/login").permitAll()
//                        .requestMatchers(HttpMethod.POST, "/api/auth/aluno/login").permitAll()
//                        .requestMatchers(HttpMethod.GET, "/api/status").permitAll()
//
//                        // ========== ENDPOINTS APENAS ADMIN ==========
//                        .requestMatchers(HttpMethod.POST, "/api/auth/cadastro").hasRole("ADMIN")
//
//                        // Criar/Editar/Deletar Conteúdo do Jogo (ADMIN)
//                        .requestMatchers(HttpMethod.POST,
//                                "/api/jogos", "/api/herois", "/api/silabas", "/api/palavras",
//                                "/api/imagens", "/api/fragmentos", "/api/cenas").hasRole("ADMIN")
//                        .requestMatchers(HttpMethod.PUT,
//                                "/api/jogos/**", "/api/herois/**", "/api/silabas/**", "/api/palavras/**",
//                                "/api/imagens/**", "/api/fragmentos/**", "/api/cenas").hasRole("ADMIN")
//                        .requestMatchers(HttpMethod.DELETE,
//                                "/api/jogos/**", "/api/herois/**", "/api/silabas/**", "/api/palavras/**",
//                                "/api/imagens/**", "/api/fragmentos/**", "/api/cenas").hasRole("ADMIN")
//
//                        // Gerenciar Instituições (ADMIN)
//                        .requestMatchers(HttpMethod.POST, "/api/instituicoes").hasRole("ADMIN")
//                        .requestMatchers(HttpMethod.PUT, "/api/instituicoes/**").hasRole("ADMIN")
//                        .requestMatchers(HttpMethod.DELETE, "/api/instituicoes/**").hasRole("ADMIN")
//                        .requestMatchers(HttpMethod.PATCH, "/api/instituicoes/**").hasRole("ADMIN")
//
//                        // ========== REGRA FINAL / ADMIN E COMUM PODEM ACESSAR ==========
                        .anyRequest().authenticated()
                )
                .addFilterBefore(securityFilter, UsernamePasswordAuthenticationFilter.class)
                .build();
    }

    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration config = new CorsConfiguration();
        config.setAllowCredentials(true);
        config.setAllowedOrigins(List.of(
                "https://ninoedu.labcct.net.br",
                "http://localhost:3000",
                "https://192.168.122.123" //TEMPORÁRIO APENAS TESTE
        ));
        config.addAllowedHeader("*");
        config.addAllowedMethod("*");

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", config);
        return source;
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}