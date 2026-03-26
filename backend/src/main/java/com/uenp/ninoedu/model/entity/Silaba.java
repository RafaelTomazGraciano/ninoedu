package com.uenp.ninoedu.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "silaba")
@SQLDelete(sql = "UPDATE silaba SET deletado = true WHERE id = ?")
@Where(clause = "deletado = false")
public class Silaba {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "vogal_id", nullable = false)
    private Vogal vogal;

    @Column(length = 3)
    private String silaba;

    private String palavra;

    private String complemento;

    private String som;
    private boolean deletado = false;
}