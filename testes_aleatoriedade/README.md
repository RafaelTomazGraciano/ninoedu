# Teste de Aleatoriedade - NinoEdu API

Script de validação estatística do mecanismo de seleção aleatória de sílabas e palavras
da API REST do projeto NinoEdu. Os testes verificam se o operador `ORDER BY RANDOM()`
do PostgreSQL produz uma distribuição uniforme e com diversidade adequada entre as
execuções, garantindo que nenhum item seja favorecido em detrimento dos demais.

---

## Sumário

- [Contexto](#contexto)
- [Pré-requisitos](#pré-requisitos)
- [Como executar](#como-executar)
- [O que o script faz](#o-que-o-script-faz)
- [Arquivos gerados](#arquivos-gerados)
- [Como analisar os resultados](#como-analisar-os-resultados)
- [Embasamento estatístico](#embasamento-estatístico)
- [Estrutura do código](#estrutura-do-código)
- [Resultados obtidos](#resultados-obtidos)

---

## Contexto

O NinoEdu é uma plataforma de jogos digitais voltada à alfabetização pelo método ABACADA.
A API REST centraliza sílabas, palavras, imagens e áudios, retornando a cada requisição
um subconjunto aleatório de itens conforme o nível do aluno.

Para validar que essa seleção aleatória funciona corretamente, este script executa
2.400 requisições por categoria (200 rodadas de 3 execuções, com 4 itens cada) e aplica
três métricas estatísticas sobre os dados coletados:

- **Diversidade por rodada**: verifica se rodadas consecutivas retornam conjuntos
  suficientemente variados.
- **Taxa de Cobertura**: verifica se todos os itens do banco de dados têm chance real
  de aparecer ao longo das execuções.
- **Teste Qui-Quadrado de aderência**: verifica se a frequência com que cada item
  aparece é compatível com uma distribuição uniforme.

As categorias testadas são:

| Categoria    | Pool de itens | Graus de liberdade |
|--------------|---------------|--------------------|
| Sílabas - A  | 18            | 17                 |
| Sílabas - O  | 18            | 17                 |
| Palavras - A | 10            | 9                  |
| Palavras - O | 9             | 8                  |

---

## Pré-requisitos

- Node.js versão 18 ou superior
- Ambiente NinoEdu em execução local (banco de dados, API e servidor de arquivos)

Para subir o ambiente local, acesse o [README](./../README.md) e siga as instruções de como rodar o projeto.

Após subir, a API estará disponível em `http://localhost:8080`.

---

## Como executar

Não há dependências externas. Basta rodar o script diretamente com Node.js:

```bash
node testes_aleatoriedade.js
```

Exemplo de saída no terminal durante a execução:

```
Iniciando: Silabas - Vogal A (200 rodadas x 3 execucoes)...
  Rodada 50/200 concluida...
  Rodada 100/200 concluida...
  Rodada 150/200 concluida...
  Rodada 200/200 concluida...

Iniciando: Silabas - Vogal O (200 rodadas x 3 execucoes)...
...

Analise concluida em 137.3s
Resultados salvos em: resultado_aleatoriedade_2026-08-22_14-54-08.txt
Log de requests salvo em: requests_2026-08-22_14-54-08.txt
```

---

## O que o script faz

O script percorre as quatro categorias em sequência. Para cada uma, o processo é o
seguinte:

**1. Coleta de dados**

São realizadas 200 rodadas. Cada rodada consiste em 3 requisições HTTP GET independentes
à API. Cada requisição retorna um JSON com 4 itens (sílabas ou palavras), selecionados
aleatoriamente pelo banco de dados via `ORDER BY RANDOM()`. O script extrai apenas o
campo relevante de cada item (`silaba` ou `palavra`) e acumula os dados em duas
estruturas:

- A rodada atual, composta pelas 3 execuções, é usada imediatamente para calcular a
  Diversidade daquela rodada.
- Todas as execuções acumuladas desde o início da categoria são usadas ao final para
  calcular a Taxa de Cobertura e o Qui-Quadrado.

Cada requisição também é registrada no arquivo de log com o número da rodada, o número
da execução e os itens retornados.

**2. Cálculo das métricas**

Ao fim das 200 rodadas, o script calcula as três métricas e grava os resultados no
arquivo de saída, incluindo a fórmula, a substituição dos valores reais e a conclusão
de cada teste.

---

## Arquivos gerados

Ao final da execução, dois arquivos são criados no mesmo diretório do script. Ambos
recebem o mesmo timestamp no nome, facilitando a correspondência entre eles.

### resultado_aleatoriedade_\<timestamp\>.txt

Contém a análise estatística completa, organizada por categoria. Para cada categoria,
o arquivo apresenta:

- Os parâmetros da execução (URL, pool, número de rodadas)
- A fórmula de cada métrica com os valores reais substituídos
- A tabela do Qui-Quadrado com a frequência observada e esperada de cada item
- A conclusão de cada teste

### requests_\<timestamp\>.txt

Contém o registro de cada requisição realizada, no formato:

```
Rodada 001 | Execucao 1 | Itens: [BA, GA, MA, ZA]
Rodada 001 | Execucao 2 | Itens: [CA, NA, PA, SA]
Rodada 001 | Execucao 3 | Itens: [DA, FA, JA, TA]
Rodada 002 | Execucao 1 | Itens: [LA, RA, VA, XA]
...
```

Este arquivo permite verificar manualmente qualquer rodada e confirmar que os cálculos
do arquivo de resultado correspondem exatamente aos dados retornados pela API. Para
cruzar os dados, basta localizar uma rodada no log de requests, listar os itens
retornados nas 3 execuções, contar os distintos e comparar com o valor de diversidade
registrado no resultado.

---

## Como analisar os resultados

### Diversidade por rodada

O critério é: em cada bloco de 3 execuções (12 sorteios), pelo menos 6 itens (50%)
devem ser distintos. O resultado esperado é que a grande maioria das 200 rodadas
passe nesse critério. Uma taxa de aprovação abaixo de 90% indicaria que a API está
retornando conjuntos muito repetitivos entre execuções consecutivas.

No arquivo de resultado, procure o bloco:

```
Rodadas que passaram : 200 de 200
Taxa de aprovacao    : 100.00%
Media de distintos   : 9.47 por rodada
```

### Taxa de Cobertura

O critério é: ao longo de todas as execuções, todos os itens do banco devem ter
aparecido pelo menos uma vez. Com 2.400 sorteios e pools de no máximo 18 itens, a
cobertura esperada é de 100%. Uma cobertura inferior a 100% indicaria que algum item
nunca é selecionado, o que representaria um defeito no mecanismo de aleatoriedade.

No arquivo de resultado, procure o bloco:

```
Resultado: Cobertura de 100.00% do pool (18 de 18 itens apareceram)
```

### Teste Qui-Quadrado

O critério é: o X² calculado deve ser menor ou igual ao X² crítico. Não rejeitar
H0 é o resultado desejado — significa que a distribuição observada é compatível com
uniformidade, ou seja, nenhum item está sendo favorecido.

No arquivo de resultado, procure o bloco:

```
X^2 calculado = 8.6400
X^2 critico   = 27.587 (alfa = 0.05, gl = 17)

Resultado: X^2 calculado (8.6400) <= X^2 critico (27.587)
Nao se rejeita H0 - distribuicao compativel com uniformidade.
```

Quanto mais distante o valor calculado estiver do crítico, mais confortável é o
resultado. Um valor calculado muito próximo do crítico não representa falha, mas
indica que vale repetir o teste com mais execuções para maior confiabilidade.

---

## Embasamento estatístico

### Taxa de Cobertura

Métrica clássica de análise de espaço amostral. A fórmula é:

```
      |D|
C = -------
      |P|

Onde:
  |D| = número de itens distintos observados ao longo de todas as execuções
  |P| = total de itens disponíveis no banco de dados (tamanho do pool)
```

### Teste Qui-Quadrado de aderência

Teste proposto por Karl Pearson em 1900 para verificar se uma distribuição observada
se ajusta a uma distribuição teórica esperada. Neste caso, a distribuição esperada é
a uniforme — todos os itens com igual probabilidade de ser selecionados.

A fórmula é:

```
          (Oi - Ei)²
X² = Σ  ------------
             Ei

Onde:
  Oi  = frequência observada do item i (quantas vezes apareceu)
  Ei  = frequência esperada = total de sorteios / pool
  Σ   = somatório sobre todos os itens do pool
  gl  = graus de liberdade = pool - 1
```

Os graus de liberdade valem `pool - 1` porque, conhecendo o total de sorteios e a
frequência de todos os itens menos um, o último é automaticamente determinado — ele
não é livre para variar. Por isso subtrai-se 1.

O nível de significância adotado é α = 0,05, convenção padrão em pesquisa científica.
Isso significa que a probabilidade de rejeitar H0 erroneamente (concluir que a
distribuição não é uniforme quando na verdade é) é de no máximo 5%.

Os valores críticos utilizados foram extraídos da tabela de Pearson (1900):

| gl | X² crítico (α = 0,05) |
|----|------------------------|
| 8  | 15,507                 |
| 9  | 16,919                 |
| 17 | 27,587                 |

Referência: PEARSON, K. On the criterion that a given system of deviations from the
probable in the case of a correlated system of variables is such that it can be
reasonably supposed to have arisen from random sampling. **Philosophical Magazine**,
Series 5, v. 50, n. 302, p. 157-175, 1900.

---

## Estrutura do código

```
testes_aleatoriedade.js
|
+-- Configuração
|     Constantes: URL base, número de rodadas, execuções por rodada,
|     limite de itens, nível de significância e valores críticos do
|     Qui-Quadrado por grau de liberdade.
|
+-- fetchItens(url, campo, logRequests, rodada, execucao)
|     Faz um GET para a API, extrai o campo relevante de cada item
|     do JSON retornado e registra a requisição no log.
|
+-- calcularDiversidade(rodada)
|     Recebe as 3 execuções de uma rodada, conta os itens distintos
|     e retorna se o critério de 50% foi atendido.
|
+-- calcularCobertura(todasExecucoes, poolTotal, nomeCategoria)
|     Recebe todas as 600 execuções da categoria, conta os itens
|     distintos e calcula a Taxa de Cobertura. Retorna o texto
|     formatado com fórmula e resolução.
|
+-- calcularQuiQuadrado(todasExecucoes, poolTotal, nomeCategoria)
|     Recebe todas as 600 execuções da categoria, calcula a frequência
|     observada de cada item, aplica a fórmula do Qui-Quadrado e
|     compara com o valor crítico. Retorna o texto formatado com
|     fórmula, tabela de frequências e conclusão.
|
+-- executarCategoria(cat, logRequests)
|     Orquestra a coleta e os cálculos de uma categoria. Roda o laço
|     de 200 rodadas, chama calcularDiversidade a cada rodada e ao
|     final chama calcularCobertura e calcularQuiQuadrado.
|
+-- main()
      Ponto de entrada. Percorre as quatro categorias em sequência,
      monta os arquivos de saída e os grava em disco.
```

---

## Resultados obtidos

Os testes foram executados em 22 de agosto de 2026, com o ambiente NinoEdu rodando
localmente. Os resultados completos estão disponíveis no arquivo
`resultado_aleatoriedade_2026-08-22_14-54-08.txt` neste repositório.

| Categoria    | Diversidade        | Cobertura | X² calculado | X² crítico | Conclusão          |
|--------------|--------------------|-----------|--------------|------------|--------------------|
| Sílabas A    | 200/200 (100,00%)  | 100,00%   | 8,6400       | 27,587     | Não rejeita H0     |
| Sílabas O    | 200/200 (100,00%)  | 100,00%   | 10,9050      | 27,587     | Não rejeita H0     |
| Palavras A   | 199/200 (99,50%)   | 100,00%   | 3,6583       | 16,919     | Não rejeita H0     |
| Palavras O   | 196/200 (98,00%)   | 100,00%   | 4,8450       | 15,507     | Não rejeita H0     |

Em todas as categorias, o Teste Qui-Quadrado não rejeitou a hipótese nula, a cobertura
atingiu 100% do pool e a taxa de aprovação de diversidade ficou acima de 98%. Os
resultados indicam que o mecanismo de seleção aleatória do PostgreSQL produz uma
distribuição uniforme e com variação adequada entre execuções consecutivas.
