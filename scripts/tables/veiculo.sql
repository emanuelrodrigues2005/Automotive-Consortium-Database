/*
  Arquivo: scripts/tables/veiculo.sql
  Objetivo: Criar a tabela de Veículos
  FKs serão adicionadas externamente
*/

create table if not exists veiculo(
    idVeiculo integer not null auto_increment,
    anoVeiculo char(4) not null,
    modeloVeiculo varchar(100) not null,
    marcaVeiculo varchar(100) not null,
    precoFipe decimal(15, 2) not null,
    primary key (idVeiculo)
)