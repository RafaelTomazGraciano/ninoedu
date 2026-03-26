package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Heroi;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HeroiRepository extends JpaRepository<Heroi, Long> {
}