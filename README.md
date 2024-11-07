# Desafio 2: Modelagem de Banco de Dados para Oficina Mecânica

Este projeto faz parte do bootcamp **[Nome do Bootcamp]** promovido pela [DIO](https://www.dio.me/) em parceria com a Suzano. O objetivo deste desafio é criar um esquema conceitual de banco de dados para uma oficina mecânica, com base na narrativa fornecida. O esquema foi modelado usando o MySQL Workbench e o diagrama foi gerado com o auxílio da ferramenta dbdiagram.io.

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

![Diagrama do Banco de Dados](./diagrama_oficina.png)  *(Substitua `diagrama_oficina.png` pelo nome real do seu arquivo de imagem)*

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


## Considerações Adicionais

* O diagrama de esquema conceitual fornece uma visão geral da estrutura do banco de dados.
* Os relacionamentos entre as tabelas são representados no diagrama.
* Detalhes adicionais sobre a implementação e as escolhas de design podem ser adicionados a este README.


## Conclusão

Este esquema conceitual fornece uma base sólida para o desenvolvimento de um sistema de gerenciamento de ordens de serviço para uma oficina mecânica. Ele atende aos requisitos da narrativa e permite um controle eficiente das informações relevantes para o negócio.
```

**Onde colocar a imagem no projeto:**

A melhor prática é salvar a imagem do diagrama (diagrama_oficina.png) na raiz do seu projeto ou em uma pasta dedicada a imagens/diagramas (e.g., `./assets/images/`). No README, o caminho da imagem deve ser relativo a onde o README está localizado.


Lembre-se de substituir os placeholders (`[Nome do Bootcamp]`, etc.) pelas informações corretas. Este README fornece uma descrição completa do seu projeto, facilitando o entendimento do seu esquema conceitual.