package com.uenp.ninoedu.model.entity;

import com.uenp.ninoedu.model.enums.Estagio;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import java.util.Collection;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "aluno")
@SQLDelete(sql = "UPDATE aluno SET deletado = true WHERE id = ?")
@Where(clause = "deletado = false")
public class Aluno implements UserDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;

    @Column(unique = true)
    private String codigo;

    @ManyToOne
    @JoinColumn(name = "heroi_id", nullable = false)
    private Heroi heroi;

    @ManyToOne
    @JoinColumn(name = "vogal_id", nullable = false)
    private Vogal vogal;

    private Estagio estagio;

    @ManyToOne
    @JoinColumn(name = "professor_id", nullable = false)
    private Professor professor;

    private boolean deletado = false;

    // --- MÉTODOS DO USERDETAILS ---

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return List.of(new SimpleGrantedAuthority("ROLE_ALUNO"));
    }

    @Override
    public String getPassword() {
        // IMPORTANTE: Retorna null pois o Aluno não tem senha.
        // O login dele não passará pelo AuthenticationManager.
        return null;
    }

    @Override
    public String getUsername() {
        return this.codigo;
    }
}