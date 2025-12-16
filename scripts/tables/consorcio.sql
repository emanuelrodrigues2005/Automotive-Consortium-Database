/*
  Arquivo: scripts/tables/consortium.sql
  Objetivo: Criar a tabela de Consórcios
  FKs serão adicionadas externamente
*/

create table if not exists consorcio (
    idConsorcio integer not null auto_increment,
    idVeiculo integer not null,
    idAdministrador char(11) not null,
    ativo boolean not null default true,
    duracaoConsorcio integer not null,
    maxParticipantes integer not null,
    taxAdmin decimal(3, 2),
    nomeConsorcio varchar(255) not null,
    valorTotal decimal(15, 2) not null,
    primary key (idConsorcio),
    criadoEm datetime not null default current_timestamp,
    atualizadoEm datetime not null default current_timestamp on update current_timestamp,
    
    constraint ck_tax_admin check (taxAdmin >= 0 and taxAdmin <= 1)
);
