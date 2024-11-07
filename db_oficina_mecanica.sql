USE oficina;

-- Tabela Cliente
CREATE TABLE Cliente (
    CPF VARCHAR(14) NOT NULL PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Telefone VARCHAR(20),
    Endereco VARCHAR(255)
);

-- Tabela Veiculo
CREATE TABLE Veiculo (
    Placa VARCHAR(8) NOT NULL PRIMARY KEY,
    Modelo VARCHAR(255) NOT NULL,
    Ano INT,
    Cliente_CPF VARCHAR(14) NOT NULL,
    FOREIGN KEY (Cliente_CPF) REFERENCES Cliente(CPF)
);

-- Tabela Mecanico
CREATE TABLE Mecanico (
    Codigo INT NOT NULL PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255),
    Especialidade VARCHAR(255)
);

-- Tabela Equipe
CREATE TABLE Equipe (
    ID_Equipe INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(255)
);

-- Tabela Mecanicos_Equipe (Para o relacionamento N:N)
CREATE TABLE Mecanicos_Equipe (
    Codigo_Mecanico INT NOT NULL,
    ID_Equipe INT NOT NULL,
    PRIMARY KEY (Codigo_Mecanico, ID_Equipe),
    FOREIGN KEY (Codigo_Mecanico) REFERENCES Mecanico(Codigo),
    FOREIGN KEY (ID_Equipe) REFERENCES Equipe(ID_Equipe)
);


-- Tabela TipoServico (Conserto e revisão são tipos de serviço)
CREATE TABLE TipoServico (
    ID_TipoServico INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(255) NOT NULL  -- Ex: 'Conserto', 'Revisão'
);


-- Tabela Servico
CREATE TABLE Servico (
    ID_Servico INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(255) NOT NULL,
    Valor_Mao_de_obra DECIMAL(10,2) NOT NULL,
     ID_TipoServico INT NOT NULL, -- Referenciando o tipo de serviço
    FOREIGN KEY (ID_TipoServico) REFERENCES TipoServico(ID_TipoServico)
);

-- Tabela Peca
CREATE TABLE Peca (
    ID_Peca INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(255) NOT NULL,
    Valor DECIMAL(10,2) NOT NULL
);

-- Tabela Fornecedor
CREATE TABLE Fornecedor (
    ID_Fornecedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(20) UNIQUE,
    Telefone VARCHAR(20),
    Endereco VARCHAR(255)
);

-- Tabela Pecas_Fornecedor (Relacionamento N:N entre Peça e Fornecedor)
CREATE TABLE Pecas_Fornecedor (
    ID_Peca INT NOT NULL,
    ID_Fornecedor INT NOT NULL,
    PRIMARY KEY (ID_Peca, ID_Fornecedor),
    FOREIGN KEY (ID_Peca) REFERENCES Peca(ID_Peca),
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor)
);


-- Tabela Ordem de Serviço (OS)
CREATE TABLE OrdemServico (
    Numero_OS INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Data_Emissao DATE NOT NULL,
    Data_Conclusao DATE,
    Status VARCHAR(20) NOT NULL,
    Valor_Total DECIMAL(10,2) NOT NULL,
    Veiculo_Placa VARCHAR(8) NOT NULL,
    Equipe_ID_Equipe INT NOT NULL,
    FOREIGN KEY (Veiculo_Placa) REFERENCES Veiculo(Placa),
    FOREIGN KEY (Equipe_ID_Equipe) REFERENCES Equipe(ID_Equipe)
);

-- Tabela Servicos_OS (N:N entre OS e Serviço)
CREATE TABLE Servicos_OS (
    Numero_OS INT NOT NULL,
    ID_Servico INT NOT NULL,
    Quantidade INT NOT NULL,
    PRIMARY KEY (Numero_OS, ID_Servico),
    FOREIGN KEY (Numero_OS) REFERENCES OrdemServico(Numero_OS),
    FOREIGN KEY (ID_Servico) REFERENCES Servico(ID_Servico)
);

-- Tabela Peças_OS  (N:N entre OS e Peça)
CREATE TABLE Pecas_OS (
    Numero_OS INT NOT NULL,
    ID_Peca INT NOT NULL,
    Quantidade INT NOT NULL,
    PRIMARY KEY (Numero_OS, ID_Peca),
    FOREIGN KEY (Numero_OS) REFERENCES OrdemServico(Numero_OS),
    FOREIGN KEY (ID_Peca) REFERENCES Peca(ID_Peca)
);