
/*
  Arquivo: scripts/tables/vendedor.sql
  Objetivo: Criar a tabela de Vendedor
  FKs serão adicionadas externamente
*/


create table if not exists vendedor (
    
    cpfVendedor char(11) not null,
    nome char(100) not null,
    email char(40) not null,
    telefone char(11) not null,
    primary key(cpfVendedor)
);
