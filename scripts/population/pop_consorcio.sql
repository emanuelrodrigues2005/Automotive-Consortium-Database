/*
  Arquivo: scripts/population/pop_consorcio.sql
  Objetivo: Popular a tabela 'consorcio' com inicias 10 rows
  Dependências: As tabelas 'consorcio', 'veiculo' e 'administrador' precisam necessariamente existir, 
  com seus respectivos dados populados
*/

INSERT INTO consorcio (cpf_administrador, id_veiculo, taxa_administracao, valor_total_carta, numero_parcelas)
VALUES
    -- Admin 1 gere um consórcio de Civic
    ('12345678910', 1, 15.0, (SELECT preco_base * 1.15 FROM veiculo WHERE id_veiculo = 1), 60),
    
    -- Admin 2 gere um consórcio de Corolla
    ('03215630152', 2, 12.5, (SELECT preco_base * 1.125 FROM veiculo WHERE id_veiculo = 2), 48),
    
    -- Admin 3 gere um consórcio de Compass
    ('98765432100', 3, 10.0, (SELECT preco_base * 1.10 FROM veiculo WHERE id_veiculo = 3), 72),
    
    -- Admin 4 gere um consórcio de HB20
    ('11122233344', 4, 15.0, (SELECT preco_base * 1.15 FROM veiculo WHERE id_veiculo = 4), 36),
    
    -- Admin 5 gere um consórcio de Onix
    ('55566677788', 5, 14.0, (SELECT preco_base * 1.14 FROM veiculo WHERE id_veiculo = 5), 60),
    
    -- Outros exemplos variados usando os CPFs da lista de administradores
    ('44455566677', 1, 15.0, 184000.00, 60),
    ('99988877766', 3, 11.0, 210900.00, 48),
    ('10203040506', 2, 13.0, 175150.00, 60),
    ('60504030201', 5, 15.0, 112700.00, 24),
    ('12312312312', 4, 10.0, 104500.00, 36);