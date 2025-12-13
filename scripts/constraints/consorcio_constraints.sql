/*
  Arquivo: scripts/constraints/consorcio_constraints.sql
  Objetivo: Centralizar todas as constraints existentes na tabela 'consorcio'
  Dependência: As tabelas 'consorcio' e 'administrador' já devem existir
*/

alter table consorcio 
add constraint fk_consorcio_administrador
foreign key (idAdministrador) references administrador (cpfAdmin);
