package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Favorito;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface FavoritoRepository extends JpaRepository<Favorito, Long> {

    List<Favorito> findByAlunoId(Long alunoId);

    int countByJogoId(Long id);

    Optional<Object> findByAlunoIdAndJogoId(Long aLong, Long aLong1);
}