/*
  Arquivo: scripts/population/pop_consorcio.sql
  Objetivo: Popular a tabela 'consorcio' com inicias 10 rows
  Dependências: As tabelas 'consorcio', 'veiculo' e 'administrador' precisam necessariamente existir, 
  com seus respectivos dados populados
*/

insert into consorcio (idVeiculo, idAdministrador, taxAdmin, valorTotal, duracaoConsorcio, maxParticipantes, nomeConsorcio, ativo)
values
    -- Admin 1 gerencia um consórcio de Mobi Like 1.0
    (1, '12345678910', 0.15, 82788.50, 60, 50, 'Consórcio Mobi 2024', true),
    
    -- Admin 2 gerencia um consórcio de Kwid Zen
    (2, '03215630152', 0.12, 81356.80, 48, 40, 'Consórcio Kwid Econômico', true),
    
    -- Admin 3 gerencia um consórcio de Onix Hatch LT
    (3, '98765432100', 0.10, 97900.00, 72, 60, 'Consórcio Onix Premium', true),
    
    -- Admin 4 gerencia um consórcio de HB20 Sense
    (4, '11122233344', 0.15, 98325.00, 36, 30, 'Consórcio HB20 Rápido', true),
    
    -- Admin 5 gerencia um consórcio de Polo Track
    (5, '55566677788', 0.14, 100308.60, 60, 50, 'Consórcio Polo VW', true),
    
    -- Admin 6 gerencia um consórcio de Onix Plus Premier
    (8, '44455566677', 0.15, 132250.00, 60, 50, 'Consórcio Onix Plus', true),
    
    -- Admin 7 gerencia um consórcio de Compass Longitude
    (17, '99988877766', 0.11, 221988.90, 48, 35, 'Consórcio Compass SUV', true),
    
    -- Admin 8 gerencia um consórcio de Corolla XEi
    (10, '10203040506', 0.13, 179206.70, 60, 45, 'Consórcio Corolla Elite', true),
    
    -- Admin 9 gerencia um consórcio de T-Cross Comfortline
    (14, '60504030201', 0.12, 180308.80, 24, 20, 'Consórcio T-Cross Express', true),
    
    -- Admin 10 gerencia um consórcio de Creta Platinum
    (15, '12312312312', 0.10, 181500.00, 36, 30, 'Consórcio Creta Premium', true);