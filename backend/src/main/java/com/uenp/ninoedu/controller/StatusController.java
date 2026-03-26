package com.uenp.ninoedu.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.uenp.ninoedu.model.dto.status.StatusResponseDTO;
import com.uenp.ninoedu.services.StatusService;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/status")
public class StatusController {

  private final StatusService statusService;

  @GetMapping
  public ResponseEntity<StatusResponseDTO> ApiStatus() {
    return ResponseEntity.ok(statusService.verifyApiStatus());
  }
}
