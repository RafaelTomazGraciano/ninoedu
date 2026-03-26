package com.uenp.ninoedu.services;

import com.uenp.ninoedu.model.dto.status.StatusResponseDTO;
import jakarta.persistence.EntityManager;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class StatusService {

    private final EntityManager entityManager;

    public StatusResponseDTO verifyApiStatus() {
        try {
            entityManager.createNativeQuery("SELECT 1").getSingleResult();
            return new StatusResponseDTO("online", "API is online and connected to the database");
        } catch (Exception e) {
            return new StatusResponseDTO("offline", "API is offline due to database connection error");
        }
    }
}
