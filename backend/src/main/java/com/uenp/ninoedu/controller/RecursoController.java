package com.uenp.ninoedu.controller;

import com.uenp.ninoedu.model.dto.palavra.RecursoPalavraDTO;
import com.uenp.ninoedu.model.dto.silaba.RecursoSilabaDTO;
import com.uenp.ninoedu.model.enums.TipoColorir;
import com.uenp.ninoedu.services.RecursoJogosService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/recursos")
public class RecursoController {

    private final RecursoJogosService recursoJogosService;

    @GetMapping("/silabas")
    public ResponseEntity<List<RecursoSilabaDTO>> buscarSilabas(
            @RequestParam String vogal,
            @RequestParam int limite,
            @RequestParam TipoColorir tipoColorir,
            @RequestParam int quantImagens
    ){
        List<RecursoSilabaDTO> response = recursoJogosService.buscarSilabasParaJogo(vogal, limite, tipoColorir, quantImagens);
        return ResponseEntity.ok(response);
    }

    @GetMapping("/palavras")
    public ResponseEntity<List<RecursoPalavraDTO>> buscarPalavras(
            @RequestParam String vogal,
            @RequestParam int limite,
            @RequestParam TipoColorir tipoColorir,
            @RequestParam int quantImagens
    ){
        List<RecursoPalavraDTO> response = recursoJogosService.buscarPalavrasParaJogo(vogal, limite, tipoColorir, quantImagens);
        return ResponseEntity.ok(response);
    }
}
