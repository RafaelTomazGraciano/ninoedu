package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Professor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProfessorRepository extends JpaRepository<Professor, Long> {

    List<Professor> findByInstituicaoId(Long instituicaoId);
}