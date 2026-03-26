package com.uenp.ninoedu.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "palavra_silaba")
public class PalavraSilaba {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "palavra_id", nullable = false)
    private Palavra palavra;

    @ManyToOne
    @JoinColumn(name = "silaba_id", nullable = false)
    private Silaba silaba;

    private Integer posicao;
}