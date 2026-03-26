package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Silaba;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface SilabaRepository extends JpaRepository<Silaba,Long> {
    Page<Silaba> findByVogalId(Long vogalId, Pageable pageable);

    @Query(value = "SELECT * FROM silaba WHERE vogal_id IN :vogalIds ORDER BY RANDOM() LIMIT :limite", nativeQuery = true)
    List<Silaba> findRandomByVogalIds(@Param("vogalIds") List<Long> vogalIds, @Param("limite") int limite);
}
