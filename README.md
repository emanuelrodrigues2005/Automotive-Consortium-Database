# Automotive Consortium Database

## Descrição do Projeto

Sistema de banco de dados relacional para gerenciamento de consórcios automotivos. O projeto implementa uma estrutura completa para administração de consórcios de veículos, incluindo gestão de clientes, vendedores, contratos, boletos e veículos disponíveis.

## Tecnologias Utilizadas

- **SGBD**: MySQL
- **Charset**: UTF8MB4
- **Collation**: utf8mb4_unicode_ci

## Estrutura do Banco de Dados

### Entidades Principais

#### 1. Cliente
Armazena informações dos clientes que participam dos consórcios.

**Campos:**
- `cpf` (CHAR(11), PK): CPF do cliente
- `nome` (VARCHAR(64)): Nome completo
- `dataNascimento` (DATE): Data de nascimento
- `endereco` (VARCHAR(128)): Endereço residencial
- `telefone` (VARCHAR(20)): Telefone de contato
- `email` (VARCHAR(64)): E-mail
- `criadoEm` (DATETIME): Timestamp de criação
- `atualizadoEm` (DATETIME): Timestamp de última atualização

#### 2. Vendedor
Representa os vendedores responsáveis pela intermediação dos contratos.

**Campos:**
- `cpfVendedor` (CHAR(11), PK): CPF do vendedor
- `nome` (CHAR(100)): Nome completo
- `email` (CHAR(40)): E-mail corporativo
- `telefone` (CHAR(11)): Telefone de contato
- `criadoEm` (DATETIME): Timestamp de criação
- `atualizadoEm` (DATETIME): Timestamp de última atualização

#### 3. Administrador
Gerencia os administradores do sistema responsáveis pelos consórcios.

**Campos:**
- `cpfAdmin` (CHAR(11), PK): CPF do administrador
- `senha` (VARCHAR(10)): Senha de acesso
- `criadoEm` (DATETIME): Timestamp de criação
- `atualizadoEm` (DATETIME): Timestamp de última atualização

#### 4. Veiculo
Catálogo de veículos disponíveis para consórcio.

**Campos:**
- `idVeiculo` (INT, PK, AUTO_INCREMENT): Identificador único
- `anoVeiculo` (CHAR(4)): Ano de fabricação
- `modeloVeiculo` (VARCHAR(100)): Modelo do veículo
- `marcaVeiculo` (VARCHAR(100)): Marca do veículo
- `precoFipe` (DECIMAL(15,2)): Preço conforme tabela FIPE
- `criadoEm` (DATETIME): Timestamp de criação
- `atualizadoEm` (DATETIME): Timestamp de última atualização

#### 5. Consorcio
Representa os grupos de consórcio disponíveis.

**Campos:**
- `idConsorcio` (INT, PK, AUTO_INCREMENT): Identificador único
- `idVeiculo` (INT, FK): Referência ao veículo
- `idAdministrador` (CHAR(11), FK): Administrador responsável
- `ativo` (BOOLEAN): Status do consórcio
- `duracaoConsorcio` (INT): Duração em meses
- `maxParticipantes` (INT): Número máximo de participantes
- `taxAdmin` (DECIMAL(3,2)): Taxa de administração (0 a 1)
- `nomeConsorcio` (VARCHAR(255)): Nome identificador
- `valorTotal` (DECIMAL(15,2)): Valor total do consórcio
- `criadoEm` (DATETIME): Timestamp de criação
- `atualizadoEm` (DATETIME): Timestamp de última atualização

**Constraints:**
- CHECK: `taxAdmin >= 0 AND taxAdmin <= 1`
- FK: `idVeiculo` → `veiculo(idVeiculo)`
- FK: `idAdministrador` → `administrador(cpfAdmin)`

#### 6. Contrato
Registra os contratos firmados entre clientes e consórcios.

**Campos:**
- `idContrato` (INT, PK, AUTO_INCREMENT): Identificador único
- `idCliente` (CHAR(11), FK): CPF do cliente
- `idConsorcio` (INT, FK): Consórcio associado
- `dataInicio` (DATE): Data de início do contrato
- `dataEncerramento` (DATE): Data de encerramento
- `parcelasPagas` (INT): Número de parcelas pagas
- `status` (VARCHAR(20)): Status atual do contrato
- `idVendedor` (CHAR(11), FK): Vendedor responsável
- `criadoEm` (DATETIME): Timestamp de criação
- `atualizadoEm` (DATETIME): Timestamp de última atualização

**Constraints:**
- FK: `idCliente` → `cliente(cpf)`
- FK: `idConsorcio` → `consorcio(idConsorcio)`
- FK: `idVendedor` → `vendedor(cpfVendedor)`

#### 7. Boleto
Armazena informações sobre os boletos de pagamento das parcelas.

**Campos:**
- `idBoleto` (INT, PK, AUTO_INCREMENT): Identificador único
- `dataEmissao` (DATE): Data de emissão do boleto
- `dataPagamento` (DATE): Data de pagamento efetivo
- `numeroParcela` (INT): Número da parcela
- `valorBoleto` (DECIMAL(15,2)): Valor do boleto
- `statusBoleto` (VARCHAR(20)): Status do pagamento
- `dataVencimento` (DATE): Data de vencimento
- `idContrato` (INT, FK): Contrato associado
- `criadoEm` (DATETIME): Timestamp de criação
- `atualizadoEm` (DATETIME): Timestamp de última atualização

**Constraints:**
- FK: `idContrato` → `contrato(idContrato)`

### Diagrama de Relacionamentos

```
administrador (1) ----< (N) consorcio
veiculo (1) ----< (N) consorcio
consorcio (1) ----< (N) contrato
cliente (1) ----< (N) contrato
vendedor (1) ----< (N) contrato
contrato (1) ----< (N) boleto
```

## Estrutura de Diretórios

```
Automotive-Consortium-Database/
│
├── design/
│   ├── conceptual_modeling.png    # Modelo conceitual do banco
│   └── logical_modeling.png       # Modelo lógico do banco
│
├── dump_exports/
│   └── ConsorcioDumpWithCreateSquema.sql    # Dump completo do banco
│
├── scripts/
│   ├── setup/
│   │   └── create_automotive_consortium_database.sql    # Criação do banco
│   │
│   ├── tables/
│   │   ├── administrador.sql      # DDL tabela administrador
│   │   ├── boleto.sql             # DDL tabela boleto
│   │   ├── cliente.sql            # DDL tabela cliente
│   │   ├── consorcio.sql          # DDL tabela consorcio
│   │   ├── contrato.sql           # DDL tabela contrato
│   │   ├── veiculo.sql            # DDL tabela veiculo
│   │   ├── vendedor.sql           # DDL tabela vendedor
│   │   │
│   │   └── constraints/
│   │       ├── boleto_constraints.sql      # Foreign keys de boleto
│   │       ├── consorcio_constraints.sql   # Foreign keys de consorcio
│   │       └── contrato_constraints.sql    # Foreign keys de contrato
│   │
│   └── population/
│       ├── pop_administrador.sql  # Dados de teste - administradores
│       ├── pop_boleto.sql         # Dados de teste - boletos
│       ├── pop_cliente.sql        # Dados de teste - clientes
│       ├── pop_consorcio.sql      # Dados de teste - consórcios
│       ├── pop_contrato.sql       # Dados de teste - contratos
│       ├── pop_veiculo.sql        # Dados de teste - veículos
│       └── pop_vendedor.sql       # Dados de teste - vendedores
│
├── LICENSE
└── README.md
```

## Instalação e Configuração

### Pré-requisitos

- MySQL Server 5.7 ou superior
- Cliente MySQL (MySQL Workbench, DBeaver, ou linha de comando)

### Opção 1: Instalação via Scripts Individuais

Execute os scripts na seguinte ordem:

```bash
# 1. Criar o banco de dados
mysql -u root -p < scripts/setup/create_automotive_consortium_database.sql

# 2. Criar tabelas base (sem dependências)
mysql -u root -p automotive_consortium < scripts/tables/administrador.sql
mysql -u root -p automotive_consortium < scripts/tables/cliente.sql
mysql -u root -p automotive_consortium < scripts/tables/vendedor.sql
mysql -u root -p automotive_consortium < scripts/tables/veiculo.sql

# 3. Criar tabela consorcio e suas constraints
mysql -u root -p automotive_consortium < scripts/tables/consorcio.sql
mysql -u root -p automotive_consortium < scripts/tables/constraints/consorcio_constraints.sql

# 4. Criar tabela contrato e suas constraints
mysql -u root -p automotive_consortium < scripts/tables/contrato.sql
mysql -u root -p automotive_consortium < scripts/tables/constraints/contrato_constraints.sql

# 5. Criar tabela boleto e suas constraints
mysql -u root -p automotive_consortium < scripts/tables/boleto.sql
mysql -u root -p automotive_consortium < scripts/tables/constraints/boleto_constraints.sql

# 6. Popular o banco com dados de teste (opcional)
mysql -u root -p automotive_consortium < scripts/population/pop_administrador.sql
mysql -u root -p automotive_consortium < scripts/population/pop_cliente.sql
mysql -u root -p automotive_consortium < scripts/population/pop_vendedor.sql
mysql -u root -p automotive_consortium < scripts/population/pop_veiculo.sql
mysql -u root -p automotive_consortium < scripts/population/pop_consorcio.sql
mysql -u root -p automotive_consortium < scripts/population/pop_contrato.sql
mysql -u root -p automotive_consortium < scripts/population/pop_boleto.sql
```

### Opção 2: Instalação via Dump Completo

```bash
# Importar dump completo (inclui estrutura e dados)
mysql -u root -p < dump_exports/ConsorcioDumpWithCreateSquema.sql
```

## Ordem de Dependências

A criação das tabelas deve respeitar a seguinte ordem devido às chaves estrangeiras:

1. **Tabelas Independentes:**
   - `administrador`
   - `cliente`
   - `vendedor`
   - `veiculo`

2. **Primeira Dependência:**
   - `consorcio` (depende de `administrador` e `veiculo`)

3. **Segunda Dependência:**
   - `contrato` (depende de `cliente`, `vendedor` e `consorcio`)

4. **Terceira Dependência:**
   - `boleto` (depende de `contrato`)

## Características Técnicas

### Timestamps Automáticos
Todas as tabelas possuem os campos:
- `criadoEm`: Preenchido automaticamente na inserção
- `atualizadoEm`: Atualizado automaticamente em qualquer modificação

### Integridade Referencial
- Todas as chaves estrangeiras estão devidamente configuradas
- Constraints de verificação para validação de dados (ex: taxa de administração)

### Tipos de Dados
- CPF: CHAR(11) para manter o tamanho fixo
- Valores monetários: DECIMAL(15,2) para precisão
- Datas: DATE para campos de data, DATETIME para timestamps

## Dados de Teste

O banco inclui scripts de população com aproximadamente 30 registros para cada tabela, permitindo testes completos do sistema:
- 30 clientes
- 30 administradores
- 25 veículos de diferentes categorias
- Vendedores, consórcios, contratos e boletos correspondentes

## Modelagem

O diretório `design/` contém os diagramas de modelagem:
- **conceptual_modeling.png**: Modelo Entidade-Relacionamento conceitual
- **logical_modeling.png**: Modelo lógico com detalhamento dos atributos

## Licença

Consulte o arquivo [LICENSE](LICENSE) para informações sobre a licença do projeto.

## Autor

Desenvolvido como projeto de banco de dados para sistema de gestão de consórcios automotivos.