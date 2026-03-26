package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Palavra;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PalavraRepository extends JpaRepository<Palavra,Long> {
        @Query(value =
        "SELECT p.* FROM palavra p " +
        "WHERE NOT EXISTS ( " +
        "    SELECT 1 FROM palavra_silaba ps " +
        "    JOIN silaba s ON ps.silaba_id = s.id " +
        "    WHERE ps.palavra_id = p.id " +
        "    AND s.vogal_id NOT IN :vogalIds " +
        ") " +
        "AND EXISTS ( " +
        "    SELECT 1 FROM palavra_silaba ps2 " +
        "    JOIN silaba s2 ON ps2.silaba_id = s2.id " +
        "    WHERE ps2.palavra_id = p.id " +
        "    AND s2.vogal_id = :vogalAlvoId " +  // ← obriga pelo menos uma sílaba com a vogal alvo
        ") " +
        "ORDER BY RANDOM() LIMIT :limite",
        nativeQuery = true)
        List<Palavra> findRandomByVowelSet(
                @Param("vogalIds") List<Long> vogalIds,
                @Param("vogalAlvoId") Long vogalAlvoId,
                @Param("limite") int limite);
}
