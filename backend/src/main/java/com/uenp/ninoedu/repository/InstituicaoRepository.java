package com.uenp.ninoedu.repository;

import com.uenp.ninoedu.model.entity.Instituicao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface InstituicaoRepository extends JpaRepository<Instituicao, Long> {

    Optional<Instituicao> findByEmail(String email);

    @Query("SELECT i FROM Instituicao i WHERE i.login = :login")
    Optional<Instituicao> findByLogin(@Param("login") String login);

}