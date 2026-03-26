package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Imagem;
import com.uenp.ninoedu.model.enums.Estagio;
import com.uenp.ninoedu.model.enums.TipoColorir;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ImagemRepository extends JpaRepository<Imagem, Long> {

    @Query("SELECT i FROM Imagem i WHERE i.estagio = :estagio AND i.entidadeId = :entidadeId AND i.colorir = :colorir")
    List<Imagem> findByEstagioAndEntidadeIdAndColorir(
            @Param("estagio") Estagio estagio,
            @Param("entidadeId") Long entidadeId,
            @Param("colorir") TipoColorir colorir
    );

    @Query("SELECT i FROM Imagem i WHERE i.estagio = :estagio AND i.entidadeId = :entidadeId")
    Page<Imagem> findByEstagioAndEntidadeId(
            @Param("estagio") Estagio estagio,
            @Param("entidadeId") Long entidadeId,
            Pageable pageable
    );

    @Query("SELECT COUNT(i) FROM Imagem i WHERE i.entidadeId = :entidadeId AND i.estagio = :estagio AND i.deletado = false")
    long countByEntidadeIdAndEstagioAndDeletadoFalse(
            @Param("entidadeId") Long entidadeId,
            @Param("estagio") Estagio estagio
    );

    @Query("SELECT i FROM Imagem i WHERE i.cenaId = :cenaId")
    List<Imagem> findByCenaId(@Param("cenaId") Long cenaId);

    @Query("SELECT CASE WHEN COUNT(i) > 0 THEN true ELSE false END FROM Imagem i WHERE i.cenaId = :cenaId")
    boolean existsByCenaId(@Param("cenaId") Long cenaId);

    @Query("SELECT i FROM Imagem i WHERE i.estagio = :estagio AND i.entidadeId = :entidadeId AND i.colorir = :colorir AND i.deletado = false")
    List<Imagem> findByEstagioAndEntidadeIdAndColorirAndDeletadoFalse(
            @Param("estagio") Estagio estagio,
            @Param("entidadeId") Long entidadeId,
            @Param("colorir") TipoColorir colorir
    );
}