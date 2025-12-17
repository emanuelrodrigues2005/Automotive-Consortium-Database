/*
  Arquivo: scripts/tables/contrato_constraints.sql
  Objetivo: Adicionar as foreign keys da tabela Contrato
  Ordens de criação: vendedor -> cliente -> consorcio -> contrato
  (as tabelas referenciadas devem existir antes da execução)
*/


-- FK para a tabela vendedor
alter table contrato
add constraint fk_contrato_vendedor
foreign key (idVendedor) references vendedor(cpfVendedor);


-- FK para a tabela cliente (quando criada)
alter table contrato
add constraint fk_contrato_cliente
foreign key (idCliente) references cliente(idCliente);


-- FK para a tabela consorcio (quando criada)
alter table contrato
add constraint fk_contrato_consorcio
foreign key (idConsorcio) references consorcio(idConsorcio);
