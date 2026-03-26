package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.vogal.VogalResponseDTO;
import com.uenp.ninoedu.services.VogalService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/vogais")
public class VogalController {

    private final VogalService vogalService;

    @GetMapping()
    public ResponseEntity<List<VogalResponseDTO>>  buscaVogais(){
        return ResponseEntity.ok(vogalService.listarVogais());
    }
}
