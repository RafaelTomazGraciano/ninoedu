package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Cena;
import com.uenp.ninoedu.model.enums.Estagio;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CenaRepository extends JpaRepository<Cena, Long> {

    @Query("SELECT c FROM Cena c WHERE c.entidadeId = :entidadeId AND c.estagio = :estagio")
    List<Cena> findByEntidadeIdAndEstagio(
            @Param("entidadeId") Long entidadeId,
            @Param("estagio") Estagio estagio
    );
}