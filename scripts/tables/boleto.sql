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
    idContrato integer not null,
    criadoEm datetime not null default current_timestamp,
    atualizadoEm datetime not null default current_timestamp on update current_timestamp,
    primary key (idBoleto)
);
