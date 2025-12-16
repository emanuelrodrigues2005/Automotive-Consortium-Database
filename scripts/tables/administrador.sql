/*
  Arquivo: 02_scripts/01_tables/administrator.sql
  Objetivo: Criar a tabela de Administradores do sistema
  Dependências: Nenhuma
*/

create table if not exists administrador (
    cpfAdmin char(11) not null,
    senha varchar(10) not null, 
    primary key (cpfAdmin),
    criadoEm datetime not null default current_timestamp,
    atualizadoEm datetime not null default current_timestamp on update current_timestamp,
);
