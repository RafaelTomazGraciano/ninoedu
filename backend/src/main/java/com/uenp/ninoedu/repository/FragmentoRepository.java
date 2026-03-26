package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Fragmento;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FragmentoRepository extends JpaRepository<Fragmento,Long> {
    List<Fragmento> findByImagemId(Long id);

    long countByImagemId(Long imagemId);
}
