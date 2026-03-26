package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Jogo;
import com.uenp.ninoedu.model.enums.Estagio; // Importe nosso Enum
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.domain.Pageable;

@Repository
public interface JogoRepository extends JpaRepository<Jogo, Long> {

    Page<Jogo> findByEstagio(Estagio estagio, Pageable pageable);

    Page<Jogo> findAllByEstagioAndDeletadoFalse(Estagio estagio, Pageable pageable);
}