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

![Diagrama do Banco de Dados](./diagrama_oficina.png)
## Entidades e Atributos 
