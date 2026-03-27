# NinoEdu 

## Requisitos

- [Docker](https://www.docker.com/get-started)
- WSL 

Ao instalar o Docker ele vai pedir para instalar o WSL.

---

## Estrutura esperada de pastas

Antes de subir o ambiente, certifique-se de que as pastas estão organizadas assim:

```
ninoedu/
├── docker-compose.yml
├── assets/
│   ├── Vogal_A/
│   └── Vogal_O/
├── backend/
└── nginx/
    ├── Dockerfile
    └── nginx.conf
```

---

## Como subir o ambiente

Clone o repositório:

```bash
git clone 
```

Entre na pasta:

```bash
cd ninoedu
```

Rode o comando abaixo para criar os containers no docker:

```bash
docker compose up -d --build
```

Na primeira vez esse comando vai demorar alguns minutos, pois o Maven precisa baixar as dependências e compilar o projeto.

---

## Endpoints disponíveis

A API roda em `http://localhost:8080`.

---

### `GET /api/recursos/silabas`

Retorna sílabas aleatórias de uma vogal, com suas imagens e áudios, prontas para uso nos jogos.

**Parâmetros de query:**

| Parâmetro    | Tipo   | Descrição |
|--------------|--------|-----------|
| `vogal`      | string | Vogal desejada. Valores aceitos: `A`, `E`, `I`, `O`, `U` |
| `limite`     | int    | Quantidade de sílabas a retornar |
| `tipoColorir`| string | Tipo de imagem para o jogo. Ver tabela abaixo |
| `quantImagens`| int   | Quantidade máxima de imagens por sílaba |

**Valores de `tipoColorir`:**

| Valor          | Descrição |
|----------------|-----------|
| `NAO_COLORIR`  | Imagens normais, sem funcionalidade de colorir |
| `JOGO_COLORIR` | Imagens com máscara para jogo de colorir |
| `CLIQUE_COLORIR` | Imagens com fragmentos para jogo de clique e colorir |

**Exemplo de requisição:**

```
GET http://localhost:8080/api/recursos/silabas?vogal=A&limite=3&tipoColorir=NAO_COLORIR&quantImagens=2
```

**Exemplo de resposta:**

```json
[
  {
    "palavra": "BANANA",
    "silaba": "BA",
    "imagens": [
      { "imagem": "http://localhost:3100/assets/Vogal_A/Imagens/Ba_Banana_Foto_1.png" },
      { "imagem": "http://localhost:3100/assets/Vogal_A/Imagens/Ba_Banana_Imagem_1.png" }
    ],
    "som": "http://localhost:3100/assets/Vogal_A/Audios/ba.ogg",
    "complemento_silaba": "_ _NANA"
  }
]
```

---

### `GET /api/recursos/palavras`

Retorna palavras aleatórias de uma vogal, com suas imagens e as sílabas que as compõem.

> ⚠️ Esta rota aceita **apenas** `tipoColorir=NAO_COLORIR`.

**Parâmetros de query:**

| Parâmetro     | Tipo   | Descrição |
|---------------|--------|-----------|
| `vogal`       | string | Vogal dominante da palavra. Valores aceitos: `A`, `E`, `I`, `O`, `U` |
| `limite`      | int    | Quantidade de palavras a retornar |
| `tipoColorir` | string | Deve ser sempre `NAO_COLORIR` |
| `quantImagens`| int    | Quantidade máxima de imagens por palavra |

**Como a vogal é determinada para uma palavra:**

A vogal filtra palavras cujas sílabas pertencem àquela vogal. A hierarquia de prioridade é:
`E > I > U > O > A` seguindo o método ABACADA.

Por exemplo, `CAVALO` tem sílabas `CA` (vogal A), `VA` (vogal A) e `LO` (vogal O) — portanto ela aparece ao buscar pela vogal `O`.

**Exemplo de requisição:**

```
GET http://localhost:8080/api/recursos/palavras?vogal=A&limite=2&tipoColorir=NAO_COLORIR&quantImagens=4
```

**Exemplo de resposta:**

```json
[
  {
    "palavra": "MALA",
    "som": "http://localhost:3100/assets/Vogal_A/AudiosPalavras/mala.ogg",
    "imagens": [
      { "imagem": "http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ma_Mala_Foto_1.png" },
      { "imagem": "http://localhost:3100/assets/Vogal_A/ImagensPalavras/Ma_Mala_Imagem_1.png" }
    ],
    "silabas": [
      { "posicao": 1, "silaba": "MA", "som": "http://localhost:3100/assets/Vogal_A/Audios/ma.ogg" },
      { "posicao": 2, "silaba": "LA", "som": "http://localhost:3100/assets/Vogal_A/Audios/la.ogg" }
    ]
  }
]
```

---

## Usando a API no Godot

Este código é um exemplo de como consumir a API do backend no Godot, fazendo as requisições para obter as sílabas, imagens e áudios, e organizando os dados em um dicionário para uso nos jogos.

Recomendo copiar o código e colar em um script do Godot e colocá-lo como Global, assim fica fácil para acessar os dados de qualquer cena do jogo. E sempre que o jogo for iniciado, ele já vai fazer as requisições e organizar os dados para uso. 

### Como configurar

**1. Crie um novo script** no seu projeto Godot e cole o código abaixo nele.
 
**2. Marque o script como Autoload (Global):**
- Vá em `Project > Project Settings > Autoload ou Globals`
- Clique no ícone de pasta e selecione o script
- Dê um nome a ele, por exemplo `Global`
- Clique em `Add`

A partir daí, qualquer cena do jogo pode acessar os dados com `Global.array_silabas`, `Global.array_imagens`, etc., sem precisar refazer as requisições.

### Código do Godot Requisições de Sílabas

``` gdscript
extends Node

#Node HTTPRequest
var JsonRequest = HTTPRequest.new()
var ImagemRequest = HTTPRequest.new()
var AudioRequest = HTTPRequest.new()

# Recebe as requisicoes
var array_dicionario: Array
var array_dicionario_imagens: Array
var texturas : Array
var audio

#posicao no array de requisicoes
var index = 0
var cont_img = 0

#array com dados apos as requisicoes
var array_silabas: Array
var array_imagens: Array


# cria dicionario
var dicionario : Dictionary = {
	"palavra" : "",
	"silaba" :  "",
	"complemento_silaba" : "",
	"imagens" : null,
	"som" : null
}

# Dados para plataforma
var Score : int = 0
var erros : int = 0
var TempoDeJogo_Min : int = 0
var TempoDeJogo_Sec : int = 0
var JogoConcluido : bool = false

#Permite que a intro toque só uma vez
var Intro_tocar : bool = true


func _ready() -> void:
	add_child(JsonRequest)
	add_child(ImagemRequest)
	add_child(AudioRequest)
	# Conecta o sinal de conclusão da requisição
	JsonRequest.request_completed.connect(_on_json_request_completed)
	ImagemRequest.request_completed.connect(_on_imagem_request_completed)
	AudioRequest.request_completed.connect(_on_audio_request_completed)
	
	var url = "http://localhost:8080/api/recursos/silabas?vogal=A&limite=18&tipoColorir=NAO_COLORIR&quantImagens=4"
	var headers = [
		"Content-Type: application/json",
	]
	JsonRequest.request(url,
		headers,
		HTTPClient.METHOD_GET)


func _on_json_request_completed(_result: int, _response_code: int, _headers: PackedStringArray, body: PackedByteArray) -> void:
	var json_string = body.get_string_from_utf8()
	
	var json = JSON.parse_string(json_string)
	
	array_dicionario = json
	
	request_imagem()


func request_imagem():
	if index == array_dicionario.size():
		return
	#request imagem
	array_dicionario_imagens = array_dicionario[index].imagens
	if cont_img < array_dicionario_imagens.size():
		ImagemRequest.request(array_dicionario_imagens[cont_img].imagem)
		cont_img += 1 


func _on_imagem_request_completed(_result: int, response_code: int, _headers: PackedStringArray, body: PackedByteArray) -> void:
	var image = Image.new()
	var err = image.load_png_from_buffer(body)
	var texture = ImageTexture.create_from_image(image)
	texturas.append(texture)
	
	if cont_img < array_dicionario_imagens.size():
		request_imagem()
	else:
		AudioRequest.request(array_dicionario[index].som)

func _on_audio_request_completed(_result: int, response_code: int, _headers: PackedStringArray, body: PackedByteArray) -> void:
	audio = AudioStreamOggVorbis.load_from_buffer(body)
	cria_dicionario()


func cria_dicionario() -> void:
	dicionario = {
		"palavra" : array_dicionario[index].palavra,
		"silaba" :  array_dicionario[index].silaba,
		"complemento_silaba" : array_dicionario[index].complemento_silaba,
		"imagens" : texturas.duplicate(),
		"som" : audio
	}
	array_silabas.append(dicionario)
	
	index += 1
	
	print(index)
	
	cont_img = 0
	texturas.clear()
	request_imagem()


func embaralhar():
	array_silabas.shuffle()
	array_imagens = array_silabas[0].imagens
	array_imagens.shuffle()
```

---

### Código do Godot Requisições de Palavras

``` gdscript
extends Node

var JsonRequest = HTTPRequest.new()
var ImagemRequest = HTTPRequest.new()
var AudioRequest = HTTPRequest.new()
var AudioSilabaRequest = HTTPRequest.new()

var array_dicionario: Array
var array_dicionario_imagens: Array
var texturas: Array
var audio_palavra
var audios_silabas: Array
var cont_silaba: int = 0

var index = 0
var cont_img = 0

var array_palavras: Array
var array_imagens: Array

var dicionario: Dictionary = {
	"palavra": "",
	"silabas": [],
	"imagens": null,
	"som": null
}

var Score: int = 0
var erros: int = 0
var TempoDeJogo_Min: int = 0
var TempoDeJogo_Sec: int = 0
var JogoConcluido: bool = false
var Intro_tocar: bool = true

func _ready() -> void:
	add_child(JsonRequest)
	add_child(ImagemRequest)
	add_child(AudioRequest)
	add_child(AudioSilabaRequest)
	JsonRequest.request_completed.connect(_on_json_request_completed)
	ImagemRequest.request_completed.connect(_on_imagem_request_completed)
	AudioRequest.request_completed.connect(_on_audio_palavra_completed)
	AudioSilabaRequest.request_completed.connect(_on_audio_silaba_completed)

	var url = "http://localhost:8080/api/recursos/palavras?vogal=O&limite=9&tipoColorir=NAO_COLORIR&quantImagens=4"
	var headers = ["Content-Type: application/json"]
	JsonRequest.request(url, headers, HTTPClient.METHOD_GET)


func _on_json_request_completed(_result: int, _response_code: int, _headers: PackedStringArray, body: PackedByteArray) -> void:
	var json_string = body.get_string_from_utf8()
	var json = JSON.parse_string(json_string)
	array_dicionario = json
	request_imagem()


func request_imagem() -> void:
	if index == array_dicionario.size():
		return
	array_dicionario_imagens = array_dicionario[index].imagens
	if cont_img < array_dicionario_imagens.size():
		ImagemRequest.request(array_dicionario_imagens[cont_img].imagem)
		cont_img += 1


func _on_imagem_request_completed(_result: int, _response_code: int, _headers: PackedStringArray, body: PackedByteArray) -> void:
	var image = Image.new()
	image.load_png_from_buffer(body)
	var texture = ImageTexture.create_from_image(image)
	texturas.append(texture)

	if cont_img < array_dicionario_imagens.size():
		request_imagem()
	else:
		AudioRequest.request(array_dicionario[index].som)


func _on_audio_palavra_completed(_result: int, _response_code: int, _headers: PackedStringArray, body: PackedByteArray) -> void:
	audio_palavra = AudioStreamOggVorbis.load_from_buffer(body)
	# Começa a baixar áudios das sílabas
	cont_silaba = 0
	audios_silabas.clear()
	request_audio_silaba()


func request_audio_silaba() -> void:
	var silabas = array_dicionario[index].silabas
	if cont_silaba < silabas.size():
		AudioSilabaRequest.request(silabas[cont_silaba].som)
		cont_silaba += 1
	else:
		cria_dicionario()


func _on_audio_silaba_completed(_result: int, _response_code: int, _headers: PackedStringArray, body: PackedByteArray) -> void:
	var audio_silaba = AudioStreamOggVorbis.load_from_buffer(body)
	audios_silabas.append(audio_silaba)
	request_audio_silaba()


func cria_dicionario() -> void:
	# Monta silabas com audio já baixado
	var silabas_raw = array_dicionario[index].silabas
	var silabas_completas = []
	for i in range(silabas_raw.size()):
		silabas_completas.append({
			"posicao": silabas_raw[i].posicao,
			"silaba": silabas_raw[i].silaba,
			"som": audios_silabas[i]
		})

	dicionario = {
		"palavra": array_dicionario[index].palavra,
		"silabas": silabas_completas,
		"imagens": texturas.duplicate(),
		"som": audio_palavra
	}
	array_palavras.append(dicionario)

	index += 1
	print(index)

	cont_img = 0
	texturas.clear()
	audio_palavra = null
	request_imagem()


func embaralhar() -> void:
	array_palavras.shuffle()
	array_imagens = array_palavras[0].imagens
	array_imagens.shuffle()
```

---

## Comandos úteis

**Ver logs do backend em tempo real:**
```bash
docker compose logs -f backend
```

**Atualizar apenas o backend após mudança no código:**
```bash
docker compose up -d --build backend
```

**Derrubar o ambiente:**
```bash
docker compose down
```

**Derrubar e apagar os dados do banco (recomeçar do zero):**
```bash
docker compose down -v
```
