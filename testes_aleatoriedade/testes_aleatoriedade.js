/**
 * Teste de Aleatoriedade - NinoEdu API
 * =====================================
 * Executa 200 rodadas (cada rodada = 3 execucoes de 4 itens)
 * para cada categoria e calcula:
 *  - Diversidade por rodada (criterio: >= 50% distintos)
 *  - Taxa de Cobertura
 *  - Teste Qui-Quadrado de aderencia
 *
 * Arquivos gerados:
 *  - resultado_aleatoriedade_<timestamp>.txt  -> analise completa
 *  - requests_<timestamp>.txt                 -> registro de cada request
 */

const fs = require("fs");

// --- Configuracao -----------------------------------------------------------

const BASE_URL = "http://localhost:8080/api/recursos";
const LIMITE = 4;
const EXECUCOES_POR_RODADA = 3;
const TOTAL_RODADAS = 200;
const NIVEL_SIGNIFICANCIA = 0.05;

// Valores criticos do Qui-Quadrado (alfa = 0.05) por graus de liberdade
// Fonte: tabela chi-quadrado padrao (Pearson, 1900)
const CHI_QUADRADO_CRITICO = {
    8: 15.507,
    9: 16.919,
    17: 27.587,
};

const CATEGORIAS = [
    {
        nome: "Silabas - Vogal A",
        url: `${BASE_URL}/silabas?vogal=A&limite=${LIMITE}&tipoColorir=NAO_COLORIR&quantImagens=2`,
        campo: "silaba",
        poolTotal: 18,
    },
    {
        nome: "Silabas - Vogal O",
        url: `${BASE_URL}/silabas?vogal=O&limite=${LIMITE}&tipoColorir=NAO_COLORIR&quantImagens=2`,
        campo: "silaba",
        poolTotal: 18,
    },
    {
        nome: "Palavras - Vogal A",
        url: `${BASE_URL}/palavras?vogal=A&limite=${LIMITE}&tipoColorir=NAO_COLORIR&quantImagens=2`,
        campo: "palavra",
        poolTotal: 10,
    },
    {
        nome: "Palavras - Vogal O",
        url: `${BASE_URL}/palavras?vogal=O&limite=${LIMITE}&tipoColorir=NAO_COLORIR&quantImagens=2`,
        campo: "palavra",
        poolTotal: 9,
    },
];

// --- Utilitarios ------------------------------------------------------------

function sleep(ms) {
    return new Promise((resolve) => setTimeout(resolve, ms));
}

async function fetchItens(url, campo, logRequests, rodada, execucao) {
    const res = await fetch(url);
    if (!res.ok) throw new Error(`HTTP ${res.status} em ${url}`);
    const json = await res.json();
    const itens = json.map((item) => item[campo]);

    // Registra o request no log
    logRequests.push(
        `Rodada ${String(rodada).padStart(3, "0")} | Execucao ${execucao} | Itens: [${itens.join(", ")}]`
    );

    return itens;
}

function sep(char, tamanho) {
    return char.repeat(tamanho || 70);
}

// --- Calculos ---------------------------------------------------------------

function calcularDiversidade(rodada) {
    const todos = rodada.flat();
    const distintos = new Set(todos).size;
    const total = todos.length;
    const percentual = distintos / total;
    return { distintos, total, percentual, passou: distintos >= total / 2 };
}

function calcularCobertura(todasExecucoes, poolTotal, nomeCategoria) {
    const todosItens = todasExecucoes.flat();
    const distintos = new Set(todosItens);
    const C = distintos.size / poolTotal;

    const linhas = [];
    linhas.push("");
    linhas.push(sep("="));
    linhas.push(`  TAXA DE COBERTURA - ${nomeCategoria}`);
    linhas.push(sep("="));
    linhas.push("");
    linhas.push("  Formula:");
    linhas.push("         |D|");
    linhas.push("    C = -----");
    linhas.push("         |P|");
    linhas.push("");
    linhas.push("  Onde:");
    linhas.push(`    |D| = itens distintos observados = ${distintos.size}`);
    linhas.push(`    |P| = total de itens no banco    = ${poolTotal}`);
    linhas.push("");
    linhas.push("  Resolucao:");
    linhas.push(`         ${distintos.size}`);
    linhas.push(`    C = ----- = ${C.toFixed(4)} = ${(C * 100).toFixed(2)}%`);
    linhas.push(`         ${poolTotal}`);
    linhas.push("");
    linhas.push(`  Itens distintos observados: ${[...distintos].sort().join(", ")}`);
    linhas.push("");
    linhas.push(`  Resultado: Cobertura de ${(C * 100).toFixed(2)}% do pool (${distintos.size} de ${poolTotal} itens apareceram)`);

    return { texto: linhas.join("\n"), cobertura: C, distintos: distintos.size };
}

function calcularQuiQuadrado(todasExecucoes, poolTotal, nomeCategoria) {
    const todosItens = todasExecucoes.flat();
    const totalSorteios = todosItens.length;
    const esperado = totalSorteios / poolTotal;
    const grausLiberdade = poolTotal - 1;
    const criticoTabela = CHI_QUADRADO_CRITICO[grausLiberdade];

    const freq = {};
    todosItens.forEach((item) => {
        freq[item] = (freq[item] || 0) + 1;
    });

    const todosDistintos = [...new Set(todosItens)].sort();

    const linhas = [];
    linhas.push("");
    linhas.push(sep("="));
    linhas.push(`  TESTE QUI-QUADRADO DE ADERENCIA - ${nomeCategoria}`);
    linhas.push(sep("="));
    linhas.push("");
    linhas.push("  Hipotese nula (H0):");
    linhas.push("    Todos os itens tem igual probabilidade de ser sorteados.");
    linhas.push("");
    linhas.push("  Formula:");
    linhas.push("              (Oi - Ei)^2");
    linhas.push("    X^2 = S  ------------");
    linhas.push("                  Ei");
    linhas.push("");
    linhas.push("  Onde:");
    linhas.push(`    Oi  = frequencia observada de cada item`);
    linhas.push(`    Ei  = frequencia esperada = total de sorteios / pool`);
    linhas.push(`        = ${totalSorteios} / ${poolTotal} = ${esperado.toFixed(4)}`);
    linhas.push(`    S   = somatorio sobre todos os ${poolTotal} itens do pool`);
    linhas.push(`    gl  = graus de liberdade = pool - 1 = ${poolTotal} - 1 = ${grausLiberdade}`);
    linhas.push(`    X^2 critico (alfa = ${NIVEL_SIGNIFICANCIA}, gl = ${grausLiberdade}) = ${criticoTabela}`);
    linhas.push("");
    linhas.push("  Resolucao - frequencia de cada item:");
    linhas.push(
        `  ${"Item".padEnd(20)} ${"Observado (Oi)".padEnd(18)} ${"Esperado (Ei)".padEnd(18)} ${"(Oi-Ei)^2/Ei"}`
    );
    linhas.push("  " + sep("-", 68));

    let chiQuadrado = 0;

    todosDistintos.forEach((item) => {
        const oi = freq[item] || 0;
        const parcela = Math.pow(oi - esperado, 2) / esperado;
        chiQuadrado += parcela;
        linhas.push(
            `  ${item.padEnd(20)} ${String(oi).padEnd(18)} ${esperado.toFixed(4).padEnd(18)} ${parcela.toFixed(4)}`
        );
    });

    const naoApareceram = poolTotal - todosDistintos.length;
    if (naoApareceram > 0) {
        for (let i = 0; i < naoApareceram; i++) {
            const parcela = Math.pow(0 - esperado, 2) / esperado;
            chiQuadrado += parcela;
            linhas.push(
                `  ${"(nao sorteado)".padEnd(20)} ${"0".padEnd(18)} ${esperado.toFixed(4).padEnd(18)} ${parcela.toFixed(4)}`
            );
        }
    }

    linhas.push("  " + sep("-", 68));
    linhas.push("");
    linhas.push(`  X^2 calculado = ${chiQuadrado.toFixed(4)}`);
    linhas.push(`  X^2 critico   = ${criticoTabela} (alfa = ${NIVEL_SIGNIFICANCIA}, gl = ${grausLiberdade})`);
    linhas.push("");

    const rejeita = chiQuadrado > criticoTabela;
    if (rejeita) {
        linhas.push(`  Resultado: X^2 calculado (${chiQuadrado.toFixed(4)}) > X^2 critico (${criticoTabela})`);
        linhas.push(`  Rejeita-se H0 - ha evidencias de distribuicao NAO uniforme.`);
    } else {
        linhas.push(`  Resultado: X^2 calculado (${chiQuadrado.toFixed(4)}) <= X^2 critico (${criticoTabela})`);
        linhas.push(`  Nao se rejeita H0 - distribuicao compativel com uniformidade.`);
    }

    return { texto: linhas.join("\n"), chiQuadrado, rejeita };
}

// --- Execucao por categoria -------------------------------------------------

async function executarCategoria(cat, logRequests) {
    const { nome, url, campo, poolTotal } = cat;
    const saida = [];
    const todasExecucoes = [];
    const rodadasDiversidade = [];

    saida.push("");
    saida.push(sep("#"));
    saida.push(`  CATEGORIA: ${nome}`);
    saida.push(`  URL: ${url}`);
    saida.push(`  Pool total: ${poolTotal} itens | Execucoes por rodada: ${EXECUCOES_POR_RODADA} | Rodadas: ${TOTAL_RODADAS}`);
    saida.push(sep("#"));

    // Cabecalho no log de requests
    logRequests.push("");
    logRequests.push(sep("-"));
    logRequests.push(`  CATEGORIA: ${nome}`);
    logRequests.push(sep("-"));

    console.log(`\nIniciando: ${nome} (${TOTAL_RODADAS} rodadas x ${EXECUCOES_POR_RODADA} execucoes)...`);

    for (let r = 0; r < TOTAL_RODADAS; r++) {
        const rodada = [];

        for (let e = 0; e < EXECUCOES_POR_RODADA; e++) {
            const itens = await fetchItens(url, campo, logRequests, r + 1, e + 1);
            rodada.push(itens);
            todasExecucoes.push(itens);
            await sleep(50);
        }

        const div = calcularDiversidade(rodada);
        rodadasDiversidade.push(div);

        if ((r + 1) % 50 === 0) {
            console.log(`  Rodada ${r + 1}/${TOTAL_RODADAS} concluida...`);
        }
    }

    // --- Diversidade ---
    const passaram = rodadasDiversidade.filter((d) => d.passou).length;
    const taxaAprovacao = passaram / TOTAL_RODADAS;
    const mediaDistintos =
        rodadasDiversidade.reduce((s, d) => s + d.distintos, 0) / TOTAL_RODADAS;

    saida.push("");
    saida.push(sep("="));
    saida.push(`  DIVERSIDADE POR RODADA - ${nome}`);
    saida.push(sep("="));
    saida.push("");
    saida.push("  Criterio: em cada bloco de 3 execucoes (12 itens),");
    saida.push("  pelo menos 6 itens (50%) devem ser distintos.");
    saida.push("");
    saida.push("  Formula:");
    saida.push("                    itens distintos na rodada");
    saida.push("    Diversidade = ---------------------------");
    saida.push("                       total de sorteios");
    saida.push("");
    saida.push(`  Onde: total de sorteios por rodada = ${EXECUCOES_POR_RODADA} x ${LIMITE} = ${EXECUCOES_POR_RODADA * LIMITE}`);
    saida.push("");
    saida.push("  Exemplo (primeiras 5 rodadas):");

    rodadasDiversidade.slice(0, 5).forEach((d, i) => {
        const status = d.passou ? "PASSOU" : "FALHOU";
        saida.push(
            `    Rodada ${i + 1}: ${d.distintos} distintos / ${d.total} sorteios` +
            ` = ${(d.percentual * 100).toFixed(1)}% -> ${status}`
        );
    });

    saida.push("");
    saida.push(`  Resumo geral (${TOTAL_RODADAS} rodadas):`);
    saida.push(`    Rodadas que passaram : ${passaram} de ${TOTAL_RODADAS}`);
    saida.push(`    Taxa de aprovacao    : ${(taxaAprovacao * 100).toFixed(2)}%`);
    saida.push(`    Media de distintos   : ${mediaDistintos.toFixed(2)} por rodada`);
    saida.push("");
    saida.push(`  Resultado: ${(taxaAprovacao * 100).toFixed(2)}% das rodadas satisfizeram o criterio de diversidade.`);

    // --- Cobertura ---
    const resultCobertura = calcularCobertura(todasExecucoes, poolTotal, nome);
    saida.push(resultCobertura.texto);

    // --- Qui-Quadrado ---
    const resultChi = calcularQuiQuadrado(todasExecucoes, poolTotal, nome);
    saida.push(resultChi.texto);

    return saida.join("\n");
}

// --- Main -------------------------------------------------------------------

async function main() {

    function formatarTimestamp(data) {
        const ano = data.getFullYear();
        const mes = String(data.getMonth() + 1).padStart(2, "0");
        const dia = String(data.getDate()).padStart(2, "0");
        const hora = String(data.getHours()).padStart(2, "0");
        const min = String(data.getMinutes()).padStart(2, "0");
        const seg = String(data.getSeconds()).padStart(2, "0");
        return `${ano}-${mes}-${dia}_${hora}-${min}-${seg}`;
    }

    const iniciou = new Date();
    const timestamp = formatarTimestamp(iniciou);

    const cabecalho = [
        sep("="),
        "  ANALISE DE ALEATORIEDADE - NinoEdu API",
        `  Data/hora : ${iniciou.toLocaleString("pt-BR")}`,
        `  Rodadas   : ${TOTAL_RODADAS} por categoria`,
        `  Execucoes : ${EXECUCOES_POR_RODADA} por rodada (${LIMITE} itens cada)`,
        `  Total de sorteios por categoria: ${TOTAL_RODADAS * EXECUCOES_POR_RODADA * LIMITE}`,
        sep("="),
    ].join("\n");

    console.log("\n" + cabecalho);

    const saidas = [cabecalho];
    const logRequests = [
        sep("="),
        "  REGISTRO DE REQUESTS - NinoEdu API",
        `  Data/hora : ${iniciou.toLocaleString("pt-BR")}`,
        `  Formato   : Rodada | Execucao | Itens retornados`,
        sep("="),
    ];

    for (const cat of CATEGORIAS) {
        try {
            const resultado = await executarCategoria(cat, logRequests);
            saidas.push(resultado);
        } catch (err) {
            const msg = `\n[ERRO] Categoria "${cat.nome}": ${err.message}`;
            console.error(msg);
            saidas.push(msg);
        }
    }

    const terminou = new Date();
    const duracao = ((terminou - iniciou) / 1000).toFixed(1);

    // --- Resumo final ---
    saidas.push("");
    saidas.push(sep("="));
    saidas.push("  RESUMO GERAL");
    saidas.push(sep("="));
    saidas.push(`  Analise concluida em ${duracao}s`);
    saidas.push(sep("="));

    console.log(`\nAnalise concluida em ${duracao}s`);

    // Salva resultado
    const nomeResultado = `resultado_aleatoriedade_${timestamp}.txt`;
    fs.writeFileSync(nomeResultado, saidas.join("\n"), "utf8");
    console.log(`Resultados salvos em: ${nomeResultado}`);

    // Salva log de requests
    const nomeRequests = `requests_${timestamp}.txt`;
    fs.writeFileSync(nomeRequests, logRequests.join("\n"), "utf8");
    console.log(`Log de requests salvo em: ${nomeRequests}`);
}

main().catch((err) => {
    console.error("Erro fatal:", err);
    process.exit(1);
});