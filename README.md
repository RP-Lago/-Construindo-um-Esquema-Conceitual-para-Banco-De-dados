# Desafio 2: Modelagem de Banco de Dados para Oficina Mecânica

Este projeto faz parte do bootcamp **Suzano - Análise de Dados com Power BI** promovido pela [DIO](https://www.dio.me/) em parceria com a [Suzano](https://www.suzano.com.br/). O objetivo deste desafio é criar um esquema conceitual de banco de dados para uma oficina mecânica, com base na narrativa fornecida. O esquema foi modelado usando o MySQL Workbench e o diagrama foi gerado com o auxílio da ferramenta [dbdiagram.io](https://dbdiagram.io/home).

## Descrição do Projeto

O sistema visa controlar e gerenciar as ordens de serviço (OS) em uma oficina mecânica.  Ele permite o cadastro de clientes, veículos, mecânicos, equipes, tipos de serviço, serviços, peças e fornecedores. O sistema também registra as peças utilizadas em cada OS, os serviços realizados e os mecânicos responsáveis, permitindo calcular o valor total de cada OS.

## Narrativa

* Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica.
* Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões periódicas.
* Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
* A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra.
* O valor de cada peça também irá compor a OS.
* O cliente autoriza a execução dos serviços.
* A mesma equipe avalia e executa os serviços.
* Os mecânicos possuem código, nome, endereço e especialidade.
* Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.

## Diagrama do Esquema Conceitual

![image](https://github.com/user-attachments/assets/0ea43676-d088-42a6-bd91-2f330ab23a1d)


## Entidades e Atributos 


**Cliente:**
* CPF (PK)
* Nome
* Telefone
* Endereço

**Veículo:**
* Placa (PK)
* Modelo
* Ano
* Cliente_CPF (FK)

**Equipe:**
* ID_Equipe (PK)
* Descrição

**Mecânico:**
* Código (PK)
* Nome
* Endereço
* Especialidade

**Mecanicos_Equipe:**
* Codigo_Mecanico (FK)
* ID_Equipe (FK)

**TipoServico:**
* ID_TipoServico (PK)
* Descrição

**Serviço:**
* ID_Servico (PK)
* Descrição
* Valor_Mao_de_obra
* ID_TipoServico (FK)

**Peça:**
* ID_Peca (PK)
* Descrição
* Valor

**Fornecedor:**
* ID_Fornecedor (PK)
* Nome
* CNPJ
* Telefone
* Endereço

**Pecas_Fornecedor:**
* ID_Peca (FK)
* ID_Fornecedor (FK)

**OrdemServico (OS):**
* Numero_OS (PK)
* Data_Emissao
* Data_Conclusao
* Status
* Valor_Total
* Veiculo_Placa (FK)
* Equipe_ID_Equipe (FK)


**Servicos_OS:**
* Numero_OS (FK)
* ID_Servico (FK)
* Quantidade

**Pecas_OS:**
* Numero_OS (FK)
* ID_Peca (FK)
* Quantidade
