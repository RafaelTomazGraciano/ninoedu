package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Aluno;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface AlunoRepository extends JpaRepository<Aluno, Long> {

    Optional<Aluno> findByCodigo(String codigo);

    List<Aluno> findByProfessorId(Long professorId);

    Long countByProfessorId(Long professorId);
}