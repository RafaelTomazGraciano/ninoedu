package com.uenp.ninoedu.model.entity;

import com.uenp.ninoedu.model.enums.Estagio;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.SQLRestriction;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "cena")
@SQLDelete(sql = "UPDATE cena SET deletado = true WHERE id = ?")
@SQLRestriction("deletado = false")
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

    private boolean deletado = false;
}