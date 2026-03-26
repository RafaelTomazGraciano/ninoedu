# 🧪 Testes Automatizados da API NinoEdu

---

## 📋 Pré-requisitos

1. **Postman Desktop** instalado
2. **API rodando** em `http://localhost:8080`
3. **PostgreSQL** configurado com:
   - Seed de vogais (A, E, I, O, U) - executado automaticamente pelo Flyway
   - Usuário admin criado (ver instruções no README principal)

---

## 📥 Importar Collection e Environment

### 1. Importar a Collection

1. Abra o Postman
2. Clique em **"Import"** (canto superior esquerdo)
3. Selecione o arquivo: `NinoEdu.postman_collection.json`
4. Clique em **"Import"**

### 2. Importar o Environment

1. Clique no ícone de **Environments**
2. Clique em **"Import"**
3. Selecione o arquivo: `NinoEdu Dev.postman_environment.json`
4. Clique em **"Import"**

### 3. Selecionar o Environment

1. No dropdown superior direito, selecione **"NinoEdu Dev"**

## ▶️ Executar os Testes

### ⚠️ IMPORTANTE: Ordem de Execução
Os testes **DEVEM** ser executados **EM ORDEM SEQUENCIAL** devido a dependências entre eles.

### Opção 1: Executar Toda a Collection

1. Clique na collection **"NinoEdu"**
2. Clique em **"Run"**
3. Clique em **"Run NinoEdu"**

### Opção 2: Executar Pasta Específica

1. Navegue até a pasta desejada 
2. Clique nos 3 pontinhos 
3. Selecione **"Run"**

**⚠️ Atenção:** Pastas intermediárias podem falhar se as dependências não foram criadas antes.

### Opção 3: Executar Teste Individual

1. Clique no teste específico
2. Clique em **"Send"**

---

## 📂 Estrutura da Collection

A collection está organizada em **17 pastas numeradas** para garantir execução sequencial:

```
01 - Auth              → Login e cadastro de instituições
02 - Status            → Health check da API
03 - Vogais            → Listagem de vogais (seed data)
04 - Heroi             → CRUD de heróis/avatares
05 - Instituicao       → Gerenciamento de instituições
06 - Professor         → CRUD de professores
07 - Aluno             → CRUD de alunos e login
08 - Silaba            → CRUD de sílabas
09 - Palavra           → CRUD de palavras com sílabas
10 - Imagem            → CRUD de imagens pedagógicas
11 - Fragmento         → CRUD de fragmentos (para colorir)
12 - Jogo              → CRUD de jogos/minigames
13 - Favorito          → Favoritar jogos
14 - Historico         → Registro de partidas
15 - Recursos          → Lógica complexa de distribuição de conteúdo
16 - Deletar           → Soft delete de todas as entidades
17 - Security          → Validação de permissões ADMIN/COMUM
```

---

## 🔗 Arquivos Relacionados

- `NinoEdu.postman_collection.json` - Collection completa
- `NinoEdu Dev.postman_environment.json` - Variáveis de ambiente