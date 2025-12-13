/*
  Arquivo: scripts/tables/boleto.sql
  Objetivo: Criar a tabela de Boletos
  FKs serão adicionadas externamente
*/


create table if not exists boleto (
    idBoleto integer not null auto_increment,
    dataEmissao date not null,
    dataPagamento date,
    numeroParcela integer not null,
    valorBoleto decimal(15, 2) not null,
    statusBoleto varchar(20) not null,
    dataVencimento date not null,
    primary key (idBoleto)
);