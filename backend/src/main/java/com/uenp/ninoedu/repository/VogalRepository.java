package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Vogal;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface VogalRepository extends JpaRepository<Vogal,Long> {
    Optional<Vogal> findByVogal(String vogal);

}
