Use oficina;

INSERT INTO Cliente (CPF, Nome, Telefone, Endereco) VALUES
('111.111.111-11', 'Cliente 1', '(11) 91111-1111', 'Rua 1, 1'),
('222.222.222-22', 'Cliente 2', '(22) 92222-2222', 'Rua 2, 2'),
('333.333.333-33', 'Cliente 3', '(33) 93333-3333', 'Rua 3, 3'),
('444.444.444-44', 'Cliente 4', '(44) 94444-4444', 'Rua 4, 4'),
('555.555.555-55', 'Cliente 5', '(55) 95555-5555', 'Rua 5, 5'),
('666.666.666-66', 'Cliente 6', '(66) 96666-6666', 'Rua 6, 6');


INSERT INTO Veiculo (Placa, Modelo, Ano, Cliente_CPF) VALUES
('AAA-1111', 'Modelo 1', 2020, '111.111.111-11'),
('BBB-2222', 'Modelo 2', 2021, '222.222.222-22'),
('CCC-3333', 'Modelo 3', 2022, '333.333.333-33'),
('DDD-4444', 'Modelo 4', 2023, '444.444.444-44'),
('EEE-5555', 'Modelo 5', 2019, '555.555.555-55'),
('FFF-6666', 'Modelo 6', 2018, '666.666.666-66');

INSERT INTO Mecanico (Codigo, Nome, Endereco, Especialidade) VALUES
(1, 'Mecânico 1', 'Rua A, 1', 'Motor'),
(2, 'Mecânico 2', 'Rua B, 2', 'Freios'),
(3, 'Mecânico 3', 'Rua C, 3', 'Suspensão'),
(4, 'Mecânico 4', 'Rua D, 4', 'Elétrica'),
(5, 'Mecânico 5', 'Rua E, 5', 'Pintura'),
(6, 'Mecânico 6', 'Rua F, 6', 'Funilaria');

INSERT INTO Equipe (ID_Equipe, Descricao) VALUES
(1, 'Equipe A'),
(2, 'Equipe B'),
(3, 'Equipe C'),
(4, 'Equipe D'),
(5, 'Equipe E'),
(6, 'Equipe F');


INSERT INTO Servico (ID_Servico, Descricao, Valor_Mao_de_obra) VALUES
(1, 'Troca de óleo', 100.00),
(2, 'Troca de pastilhas', 150.00),
(3, 'Revisão completa', 300.00),
(4, 'Alinhamento', 80.00),
(5, 'Balanceamento', 60.00),
(6, 'Funilaria', 200.00);


INSERT INTO Peca (ID_Peca, Descricao, Valor) VALUES
(1, 'Pastilha de freio', 80.00),
(2, 'Filtro de óleo', 30.00),
(3, 'Pneu', 200.00),
(4, 'Amortecedor', 150.00),
(5, 'Farol', 100.00),
(6, 'Parachoque', 300.00);

INSERT INTO OrdemServico (Numero_OS, Data_Emissao, Data_Conclusao, Status, Valor_Total, Veiculo_Placa, Equipe_ID_Equipe) VALUES
(1, '2023-05-01', '2023-05-03', 'Concluída', 380.00, 'AAA-1111', 1),
(2, '2023-06-10', '2023-06-15', 'Concluída', 530.00, 'BBB-2222', 2),
(3, '2023-07-20', '2023-07-22', 'Em andamento', 260.00, 'CCC-3333', 3),
(4, '2023-08-01', '2023-08-05', 'Concluída', 780.00, 'DDD-4444', 1),
(5, '2023-09-15', '2023-09-18', 'Cancelada', 180.00, 'EEE-5555', 2),
(6, '2023-10-22', '2023-10-25', 'Concluída', 430.00, 'FFF-6666', 3);

INSERT INTO Servicos_OS (Numero_OS, ID_Servico, Quantidade) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 4, 1),
(4, 1, 1),
(4, 5, 1),
(5, 2, 1),
(6, 6, 1);

INSERT INTO Pecas_OS (Numero_OS, ID_Peca, Quantidade) VALUES
(1, 1, 2),
(2, 3, 1),
(4, 2, 1),
(4, 4, 1),
(6, 5, 1);

INSERT INTO Fornecedor (Nome, CNPJ, Telefone, Endereco) VALUES
('Fornecedor A', '11.111.111/0001-11', '(11) 91111-1111', 'Rua A, 1'),
('Fornecedor B', '22.222.222/0001-22', '(22) 92222-2222', 'Rua B, 2'),
('Fornecedor C', '33.333.333/0001-33', '(33) 93333-3333', 'Rua C, 3'),
('Fornecedor D', '44.444.444/0001-44', '(44) 94444-4444', 'Rua D, 4'),
('Fornecedor E', '55.555.555/0001-55', '(55) 95555-5555', 'Rua E, 5'),
('Fornecedor F', '66.666.666/0001-66', '(66) 96666-6666', 'Rua F, 6');