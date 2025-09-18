-- Criar tabela de Cidades
CREATE TABLE Testes.dbo.Cidades (
   idMunicipio INT IDENTITY(1,1) PRIMARY KEY, -- auto incremento
   nomeMunicipio VARCHAR(100) NOT NULL
);

-- Criar tabela de Clientes
CREATE TABLE Testes.dbo.Clientes (
   idCliente INT IDENTITY(1,1) PRIMARY KEY,
   nomeCliente VARCHAR(150) NOT NULL,
   cnpj CHAR(14) UNIQUE NOT NULL,
   logradouro VARCHAR(200),
   idMunicipio INT NOT NULL
);

-- Criar tabela de Ligacoes
CREATE TABLE Testes.dbo.Ligacao (
   idLigacao INT NOT NULL, -- código informado, não sequencial
   idCliente INT NOT NULL
);