USE oficina
 
 -- Tabela Veiculo:
-- Adicionar uma chave estrangeira referenciando a tabela Cliente:

ALTER TABLE Veiculo
ADD CONSTRAINT FK_Veiculo_Cliente
FOREIGN KEY (Cliente_CPF) REFERENCES Cliente(CPF);
DELIMITER ;

-- Tabela OrdemServico:
-- Adicionar uma chave estrangeira referenciando a tabela Veiculo:
ALTER TABLE OrdemServico
ADD CONSTRAINT FK_OrdemServico_Veiculo
FOREIGN KEY (Veiculo_Placa) REFERENCES Veiculo(Placa);

-- Adicionar uma chave estrangeira referenciando a tabela Equipe:
ALTER TABLE OrdemServico
ADD CONSTRAINT FK_OrdemServico_Equipe
FOREIGN KEY (Equipe_ID_Equipe) REFERENCES Equipe(ID_Equipe);

-- Tabela Servicos_OS:
-- Adicionar chaves estrangeiras referenciando as tabelas OrdemServico e Servico:
ALTER TABLE Servicos_OS
ADD CONSTRAINT FK_Servicos_OS_OrdemServico
FOREIGN KEY (Numero_OS) REFERENCES OrdemServico(Numero_OS),
ADD CONSTRAINT FK_Servicos_OS_Servico
FOREIGN KEY (ID_Servico) REFERENCES Servico(ID_Servico);


-- Tabela Pecas_OS:
-- Adicionar chaves estrangeiras referenciando as tabelas OrdemServico e Peca:
ALTER TABLE Pecas_OS
ADD CONSTRAINT FK_Pecas_OS_OrdemServico
FOREIGN KEY (Numero_OS) REFERENCES OrdemServico(Numero_OS),
ADD CONSTRAINT FK_Pecas_OS_Peca
FOREIGN KEY (ID_Peca) REFERENCES Peca(ID_Peca);

-- Criar a tabela Mecanicos_Equipe:
-- Criar a tabela com as chaves primárias compostas e chaves estrangeiras:
CREATE TABLE Mecanicos_Equipe (
  Codigo_Mecanico INT NOT NULL,
  ID_Equipe INT NOT NULL,
  PRIMARY KEY (Codigo_Mecanico, ID_Equipe),
  FOREIGN KEY (Codigo_Mecanico) REFERENCES Mecanico(Codigo),
  FOREIGN KEY (ID_Equipe) REFERENCES Equipe(ID_Equipe)
);