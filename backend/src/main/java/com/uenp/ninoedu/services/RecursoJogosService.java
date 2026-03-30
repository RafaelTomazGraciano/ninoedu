package com.uenp.ninoedu.services;

import com.uenp.ninoedu.model.dto.imagem.ImagemResponseDTO;
import com.uenp.ninoedu.model.dto.palavra.RecursoPalavraDTO;
import com.uenp.ninoedu.model.dto.silaba.RecursoSilabaDTO;
import com.uenp.ninoedu.model.dto.silaba.SilabaResponseDTO;
import com.uenp.ninoedu.model.entity.*;
import com.uenp.ninoedu.model.enums.Estagio;
import com.uenp.ninoedu.model.enums.TipoColorir;
import com.uenp.ninoedu.repository.*;
import lombok.RequiredArgsConstructor;
import com.uenp.ninoedu.exception.BadRequestException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.Collections;
import java.util.Comparator;
import com.uenp.ninoedu.model.entity.PalavraSilaba;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class RecursoJogosService {

    private final SilabaRepository silabaRepository;
    private final PalavraRepository palavraRepository;
    private final PalavraSilabaRepository palavraSilabaRepository;
    private final VogalService vogalService;
    private final SilabaService silabaService;
    private final ImagemService imagemService;
    private final CenaRepository cenaRepository;
    private final ImagemRepository imagemRepository;
    private final FragmentoRepository fragmentoRepository;

    @Transactional(readOnly = true)
    public List<RecursoSilabaDTO> buscarSilabasParaJogo(String vogalNome, int limite, TipoColorir tipoColorir,
                                                        int quantImagens) throws BadRequestException {

        List<Long> vogalIds = vogalService.mapearVogalSilabas(vogalNome);
        List<Silaba> silabasFinais = silabaRepository.findRandomByVogalIds(vogalIds, limite);

        return silabasFinais.stream().map(silaba -> {
            SilabaResponseDTO silabaDTO = silabaService.buscarSilabaPorId(silaba.getId());

            List<RecursoSilabaDTO.CenaDTO> cenas = null;
            List<RecursoSilabaDTO.ImagemSimplesDTO> imagensSimples = null;

            if (tipoColorir == TipoColorir.CLIQUE_COLORIR) {
                List<Cena> cenasEntity = cenaRepository.findByEntidadeIdAndEstagio(silaba.getId(), Estagio.SILABA);

                cenas = cenasEntity.stream().map(cena -> {
                    List<Imagem> imagensDaCena = imagemRepository.findByCenaId(cena.getId());

                    List<RecursoSilabaDTO.ImagemSimplesDTO> imgsDTO = imagensDaCena.stream()
                            .map(img -> new RecursoSilabaDTO.ImagemSimplesDTO(img.getImagem(), img.getMascara()))
                            .collect(Collectors.toList());

                    List<RecursoSilabaDTO.FragmentoDTO> fragmentosDTO = imagensDaCena.stream()
                            .flatMap(img -> fragmentoRepository.findByImagemId(img.getId()).stream())
                            .map(frag -> new RecursoSilabaDTO.FragmentoDTO(frag.getCaminho()))
                            .collect(Collectors.toList());

                    return new RecursoSilabaDTO.CenaDTO(
                            cena.getCena(),
                            cena.getQuantidadeCertas(),
                            cena.getQuantidadeErradas(),
                            imgsDTO,
                            fragmentosDTO
                    );
                }).collect(Collectors.toList());

            } else {
                List<ImagemResponseDTO> imagensDTO = imagemService.buscarImagensParaJogo(
                        Estagio.SILABA, silaba.getId(), tipoColorir, quantImagens);

                imagensSimples = imagensDTO.stream()
                        .map(img -> {
                            String mascara = (tipoColorir == TipoColorir.JOGO_COLORIR) ? img.mascara() : null;
                            return new RecursoSilabaDTO.ImagemSimplesDTO(img.imagem(), mascara);
                        })
                        .collect(Collectors.toList());
            }

            return new RecursoSilabaDTO(
                    silabaDTO.palavra(),
                    silabaDTO.silaba(),
                    imagensSimples,
                    silabaDTO.som(),
                    silabaDTO.complemento(),
                    cenas
            );

        }).collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public List<RecursoPalavraDTO> buscarPalavrasParaJogo(String vogalNome, int limite, TipoColorir tipoColorir,
                                                          int quantImagens) throws BadRequestException {

        if (tipoColorir != TipoColorir.NAO_COLORIR) {
            throw new BadRequestException("Para o nível de palavras, apenas o tipo NAO_COLORIR é suportado.");
        }

        List<Long> vogalIds = vogalService.mapearVogalPalavras(vogalNome);
        Long vogalAlvoId = vogalService.buscarIdPorNome(vogalNome);
        List<Palavra> palavras = palavraRepository.findRandomByVowelSet(vogalIds, vogalAlvoId, limite);

        return palavras.stream().map(palavra -> {

            // Busca as imagens da palavra
            List<Imagem> imagens = imagemRepository.findByEstagioAndEntidadeIdAndColorirAndDeletadoFalse(
                    Estagio.PALAVRA, palavra.getId(), TipoColorir.NAO_COLORIR);

            Collections.shuffle(imagens);
            List<RecursoPalavraDTO.ImagemPalavraDTO> imagensDTO = imagens.stream()
                    .limit(quantImagens)
                    .map(img -> new RecursoPalavraDTO.ImagemPalavraDTO(img.getImagem()))
                    .collect(Collectors.toList());

            // Busca as sílabas da palavra ordenadas por posição
            List<PalavraSilaba> associacoes = palavraSilabaRepository.findByPalavraId(palavra.getId());
            List<RecursoPalavraDTO.SilabaPalavraDTO> silabasDTO = associacoes.stream()
                    .sorted(Comparator.comparing(PalavraSilaba::getPosicao))
                    .map(assoc -> new RecursoPalavraDTO.SilabaPalavraDTO(
                            assoc.getPosicao(),
                            assoc.getSilaba().getSilaba(),
                            assoc.getSilaba().getSom()
                    ))
                    .collect(Collectors.toList());

            return new RecursoPalavraDTO(
                    palavra.getPalavra(),
                    palavra.getSom(),
                    imagensDTO,
                    silabasDTO
            );

        }).collect(Collectors.toList());
    }
}