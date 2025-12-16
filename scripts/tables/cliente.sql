/*
  Arquivo: scripts/tables/cliente.sql
  Objetivo: Criar a tabela de Clientes
*/

create table if not exists cliente (
    cpf char(11) not null,
    nome varchar(64) not null,
    dataNascimento date not null,
    endereco varchar(128),
    telefone varchar(20),
    email varchar(64),
    criadoEm datetime not null default current_timestamp,
    atualizadoEm datetime not null default current_timestamp on update current_timestamp,
    primary key (cpf)
);