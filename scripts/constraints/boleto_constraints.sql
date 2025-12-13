/*
  Arquivo: scripts/constraints/boleto_constraints.sql
  Objetivo: Centralizar todas as constraints existentes na tabela 'boleto'
  Dependência: As tabelas 'boleto' e 'contrato' já devem existir
*/

alter table boleto
add constraint fk_contrato_boleto
foreign key idContrato references contrato (idContrato);