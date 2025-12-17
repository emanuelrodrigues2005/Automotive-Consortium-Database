/*
  Arquivo: scripts/population/pop_boleto.sql
  Objetivo: Popular a tabela 'boleto' com inicias 30 rows
  Dependências: A tabela 'boleto' e 'contrato' precisa necessariamente existir
*/

insert into boleto (
    dataEmissao, 
    dataPagamento, 
    numeroParcela, 
    valorBoleto, 
    statusBoleto, 
    dataVencimento, 
    idContrato
) values
  ('2024-01-15', '2024-02-10', 1, 1500.00, 'PAGO', '2024-02-15', 1),
  ('2024-02-15', '2024-03-12', 2, 1500.00, 'PAGO', '2024-03-15', 1),
  ('2024-03-15', '2024-04-14', 3, 1500.00, 'PAGO', '2024-04-15', 1),
  ('2024-04-15', '2024-05-15', 4, 1500.00, 'PAGO', '2024-05-15', 1),
  ('2024-05-15', '2024-06-14', 5, 1500.00, 'PAGO', '2024-06-15', 1),
  ('2024-06-15', null, 6, 1500.00, 'PENDENTE', '2025-12-20', 1),
  ('2024-11-20', null, 13, 850.50, 'PENDENTE', '2025-12-23', 2),
  ('2023-12-10', '2024-01-08', 24, 1200.00, 'PAGO', '2024-01-10', 3),
  ('2024-11-05', '2024-12-01', 2, 2100.00, 'PAGO', '2024-12-05', 4),
  ('2024-12-05', null, 3, 2100.00, 'PENDENTE', '2025-12-30', 4),
  ('2024-10-25', null, 7, 900.00, 'VENCIDO', '2024-11-25', 7),
  ('2024-11-01', null, 19, 1100.00, 'PENDENTE', '2025-12-19', 8);