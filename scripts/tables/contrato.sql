/*
  Arquivo: scripts/tables/contrato.sql
  Objetivo: Criar a tabela de Contrato
  FKs serão adicionadas externamente no arquivo contrato_constraints.sql
*/


create table if not exists contrato (
    
    idContrato serial not null,
    idCliente int not null,
    idConsorcio int not null,
    dataInicio date not null,
    dataEncerramento date,
    parcelasPagas int not null default 0,
    status varchar(20) not null,
    idVendedor char(11) not null,
    primary key(idContrato)
);
