\connect automotive_consorcio

/*
  Arquivo: scripts/population/pop_vendedor.sql
  Objetivo: Popular tabela vendedor com dados realistas
  Dependências: A tabela "vendedor" precisa obrigatoriamente existir
*/


INSERT INTO vendedor (cpfVendedor, nome, email, telefone) VALUES
  ('12345678901', 'Ana Silva Santos', 'ana.silva@email.com', '11987654321'),
  ('23456789012', 'Bruno Oliveira Costa', 'bruno.oliveira@email.com', '21987654321'),
  ('34567890123', 'Carla Pereira Almeida', 'carla.pereira@email.com', '31987654321'),
  ('45678901234', 'Daniel Souza Lima', 'daniel.souza@email.com', '41987654321'),
  ('56789012345', 'Eliane Martins Ferreira', 'eliane.martins@email.com', '51987654321'),
  ('67890123456', 'Felipe Rodrigues Gomes', 'felipe.rodrigues@email.com', '61987654321'),
  ('78901234567', 'Gabriela Alves Ribeiro', 'gabriela.alves@email.com', '71987654321'),
  ('89012345678', 'Henrique Costa Barbosa', 'henrique.costa@email.com', '81987654321'),
  ('90123456789', 'Isabela Fernandes Silva', 'isabela.fernandes@email.com', '91987654321'),
  ('01234567890', 'João Pereira Araújo', 'joao.pereira@email.com', '11976543210'),
  ('11223344556', 'Karla Souza Cardoso', 'karla.souza@email.com', '21976543210'),
  ('22334455667', 'Lucas Almeida Rocha', 'lucas.almeida@email.com', '31976543210'),
  ('33445566778', 'Mariana Costa Teixeira', 'mariana.costa@email.com', '41976543210'),
  ('44556677889', 'Nelson Lima Santos', 'nelson.lima@email.com', '51976543210'),
  ('55667788990', 'Olivia Ferreira Castro', 'olivia.ferreira@email.com', '61976543210'),
  ('66778899001', 'Paulo Ribeiro Melo', 'paulo.ribeiro@email.com', '71976543210'),
  ('77889900112', 'Quésia Gomes Nascimento', 'quesia.gomes@email.com', '81976543210'),
  ('88990011223', 'Rafael Barbosa Oliveira', 'rafael.barbosa@email.com', '91976543210'),
  ('99001122334', 'Sofia Silva Costa', 'sofia.silva@email.com', '11965432109'),
  ('00112233445', 'Tiago Araújo Pereira', 'tiago.araujo@email.com', '21965432109');
