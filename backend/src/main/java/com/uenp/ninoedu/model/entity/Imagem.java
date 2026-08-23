package com.uenp.ninoedu.model.entity;

import com.uenp.ninoedu.model.enums.FormatoImagem;
import com.uenp.ninoedu.model.enums.TipoColorir;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.SQLRestriction;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "imagem")
@SQLDelete(sql = "UPDATE imagem SET deletado = true WHERE id = ?")
@SQLRestriction("deletado = false")
public class Imagem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "silaba_id")
    private Silaba silaba;

    @ManyToOne
    @JoinColumn(name = "palavra_id")
    private Palavra palavra;

    private String imagem;

    private String mascara;

    private String descricao;

    private TipoColorir colorir;

    private FormatoImagem formato;

    @Column(name = "cena_id")
    private Long cenaId;

    private boolean deletado = false;
}