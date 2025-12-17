/*
  Arquivo: scripts/population/pop_contrato.sql
  Objetivo: Popular tabela contrato com dados variados
  Dependências: Tabela de 'contrato' obrigatoriamente deve existir.
  OBS: IDs de cliente/consorcio devem existir. Execute após popular essas tabelas
*/


INSERT INTO contrato (idCliente, idConsorcio, dataInicio, dataEncerramento, parcelasPagas, status, idVendedor) VALUES
  (1, 1, '2024-01-15', NULL, 5, 'ATIVO', '12345678901'),
  (2, 2, '2024-02-20', NULL, 12, 'ATIVO', '23456789012'),
  (3, 3, '2023-01-10', '2024-01-10', 24, 'ENCERRADO', '34567890123'),
  (4, 1, '2024-10-05', NULL, 2, 'ATIVO', '45678901234'),
  (5, 4, '2024-11-20', NULL, 1, 'ATIVO', '56789012345'),
  (1, 5, '2024-03-12', NULL, 8, 'ATIVO', '67890123456'),
  (2, 3, '2024-06-25', '2024-12-25', 6, 'SUSPENSO', '78901234567'),
  (5, 2, '2023-06-01', NULL, 18, 'ATIVO', '89012345678');
