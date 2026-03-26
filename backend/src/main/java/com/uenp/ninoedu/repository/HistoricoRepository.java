package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Historico;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface HistoricoRepository extends JpaRepository<Historico, Long> {

    List<Historico> findByAlunoId(Long alunoId);
}