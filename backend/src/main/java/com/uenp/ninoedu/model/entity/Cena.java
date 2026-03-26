package com.uenp.ninoedu.model.entity;

import com.uenp.ninoedu.model.enums.Estagio;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "cena")
public class Cena {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "entidade_id")
    private Long entidadeId;

    private Estagio estagio;

    private String cena;

    @Column(name = "quantidade_certas")
    private Integer quantidadeCertas;

    @Column(name = "quantidade_erradas")
    private Integer quantidadeErradas;
}