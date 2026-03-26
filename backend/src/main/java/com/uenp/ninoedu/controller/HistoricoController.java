package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.historico.HistoricoRequestDTO;
import com.uenp.ninoedu.services.HistoricoService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/historicos")
public class HistoricoController {

    private final HistoricoService historicoService;

    @PostMapping()
    public ResponseEntity<Void> criaHistorico(@RequestBody HistoricoRequestDTO historicoRequestDTO){
        historicoService.criarHistorico(historicoRequestDTO);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }
}
