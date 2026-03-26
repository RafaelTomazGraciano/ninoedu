package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.PalavraSilaba;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PalavraSilabaRepository extends JpaRepository<PalavraSilaba,Long> {

    List<PalavraSilaba> findByPalavraId(Long id);

    @Query("SELECT COUNT(ps) FROM PalavraSilaba ps WHERE ps.silaba.id = :silabaId")
    long countBySilabaId(@Param("silabaId") Long silabaId);
}
