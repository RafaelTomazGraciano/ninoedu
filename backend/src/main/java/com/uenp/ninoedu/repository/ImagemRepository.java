package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Imagem;
import com.uenp.ninoedu.model.enums.TipoColorir;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ImagemRepository extends JpaRepository<Imagem, Long> {

    @Query("SELECT i FROM Imagem i WHERE i.silaba.id = :silabaId AND i.colorir = :colorir AND i.deletado = false")
    List<Imagem> findBySilabaIdAndColorir(
            @Param("silabaId") Long silabaId,
            @Param("colorir") TipoColorir colorir
    );

    @Query("SELECT i FROM Imagem i WHERE i.palavra.id = :palavraId AND i.colorir = :colorir AND i.deletado = false")
    List<Imagem> findByPalavraIdAndColorir(
            @Param("palavraId") Long palavraId,
            @Param("colorir") TipoColorir colorir
    );

    @Query("SELECT i FROM Imagem i WHERE i.silaba.id = :silabaId AND i.deletado = false")
    Page<Imagem> findBySilabaId(@Param("silabaId") Long silabaId, Pageable pageable);

    @Query("SELECT i FROM Imagem i WHERE i.palavra.id = :palavraId AND i.deletado = false")
    Page<Imagem> findByPalavraId(@Param("palavraId") Long palavraId, Pageable pageable);

    @Query("SELECT COUNT(i) FROM Imagem i WHERE i.silaba.id = :silabaId AND i.deletado = false")
    long countBySilabaIdAndDeletadoFalse(@Param("silabaId") Long silabaId);

    @Query("SELECT COUNT(i) FROM Imagem i WHERE i.palavra.id = :palavraId AND i.deletado = false")
    long countByPalavraIdAndDeletadoFalse(@Param("palavraId") Long palavraId);

    @Query("SELECT i FROM Imagem i WHERE i.cenaId = :cenaId AND i.deletado = false")
    List<Imagem> findByCenaId(@Param("cenaId") Long cenaId);

    @Query("SELECT CASE WHEN COUNT(i) > 0 THEN true ELSE false END FROM Imagem i WHERE i.cenaId = :cenaId AND i.deletado = false")
    boolean existsByCenaId(@Param("cenaId") Long cenaId);
}