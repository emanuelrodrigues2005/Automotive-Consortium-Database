/*
  Arquivo: scripts/population/pop_contrato.sql
  Objetivo: Popular tabela contrato com dados variados
  Dependências: Tabela de 'contrato' obrigatoriamente deve existir.
  OBS: CPFs de cliente/vendedor e IDs de consórcio devem existir. Execute após popular essas tabelas
*/


insert into contrato (idCliente, idConsorcio, dataInicio, dataEncerramento, parcelasPagas, status, idVendedor) values
  ('12345678901', 1, '2024-01-15', NULL, 5, 'ATIVO', '12345678901'),
  ('23456789012', 2, '2024-02-20', NULL, 12, 'ATIVO', '23456789012'),
  ('34567890123', 3, '2023-01-10', '2024-01-10', 24, 'ENCERRADO', '34567890123'),
  ('45678901234', 1, '2024-10-05', NULL, 2, 'ATIVO', '45678901234'),
  ('56789012345', 4, '2024-11-20', NULL, 1, 'ATIVO', '56789012345'),
  ('12345678901', 5, '2024-03-12', NULL, 8, 'ATIVO', '67890123456'),
  ('23456789012', 3, '2024-06-25', '2024-12-25', 6, 'SUSPENSO', '78901234567'),
  ('56789012345', 2, '2023-06-01', NULL, 18, 'ATIVO', '89012345678'),
  ('67890123456', 6, '2024-04-10', NULL, 7, 'ATIVO', '90123456789'),
  ('78901234567', 7, '2024-05-15', NULL, 6, 'ATIVO', '01234567890'),
  ('89012345678', 8, '2024-07-22', NULL, 4, 'ATIVO', '11223344556'),
  ('90123456789', 9, '2024-08-30', NULL, 3, 'ATIVO', '22334455667'),
  ('01234567890', 10, '2024-09-18', NULL, 2, 'ATIVO', '33445566778'),
  ('10293847561', 1, '2024-11-01', NULL, 1, 'ATIVO', '44556677889'),
  ('11223344556', 2, '2024-10-12', NULL, 2, 'ATIVO', '55667788990');
