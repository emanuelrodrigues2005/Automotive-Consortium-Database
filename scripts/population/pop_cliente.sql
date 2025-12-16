/*
  Arquivo: scripts/population/pop_cliente.sql
  Objetivo: Popular a tabela 'cliente' com iniciais 30 rows
  Dependências: A tabela 'cliente' precisa necessariamente existir
*/

insert into cliente (cpf, nome, dataNascimento, endereco, telefone, email, criadoEm, atualizadoEm)
values
    ('12345678901', 'Ana Paula Silva', '1995-03-12', 'Rua das Flores, 120', '81991234567', 'ana.silva@email.com', now(), now()),
    ('23456789012', 'Bruno Henrique Costa', '1988-07-22', 'Av. Boa Viagem, 450', '81992345678', 'bruno.costa@email.com', now(), now()),
    ('34567890123', 'Carla Mendes Rocha', '1992-11-05', 'Rua do Sol, 89', '81993456789', 'carla.rocha@email.com', now(), now()),
    ('45678901234', 'Daniel Ferreira Lima', '1985-01-30', 'Av. Recife, 1020', '81994567890', 'daniel.lima@email.com', now(), now()),
    ('56789012345', 'Eduarda Nogueira Alves', '1998-09-18', 'Rua das Palmeiras, 340', '81995678901', 'eduarda.alves@email.com', now(), now()),
    ('67890123456', 'Felipe Araújo Santos', '1990-05-14', 'Rua Sete de Setembro, 77', '81996789012', 'felipe.santos@email.com', now(), now()),
    ('78901234567', 'Gabriela Torres Pacheco', '1996-12-03', 'Av. Norte, 210', '81997890123', 'gabriela.pacheco@email.com', now(), now()),
    ('89012345678', 'Henrique Souza Martins', '1987-08-09', 'Rua da Aurora, 560', '81998901234', 'henrique.martins@email.com', now(), now()),
    ('90123456789', 'Isabela Cunha Ribeiro', '1993-04-25', 'Av. Conselheiro Aguiar, 910', '81999012345', 'isabela.ribeiro@email.com', now(), now()),
    ('01234567890', 'João Victor Barros', '1999-02-17', 'Rua do Futuro, 15', '81990123456', 'joao.barros@email.com', now(), now()),
    ('10293847561', 'Karen Lima Freitas', '1991-06-11', 'Rua das Acácias, 80', '81991239876', 'karen.freitas@email.com', now(), now()),
    ('11223344556', 'Lucas Pereira Oliveira', '1986-10-29', 'Av. Caxangá, 1234', '81992348765', 'lucas.oliveira@email.com', now(), now()),
    ('22334455667', 'Mariana Farias Gomes', '1997-01-08', 'Rua do Rosário, 44', '81993457654', 'mariana.gomes@email.com', now(), now()),
    ('33445566778', 'Natan Rodrigues Pinto', '1989-09-16', 'Av. Domingos Ferreira, 300', '81994566543', 'natan.pinto@email.com', now(), now()),
    ('44556677889', 'Olívia Teixeira Moura', '1994-12-27', 'Rua Benfica, 200', '81995675432', 'olivia.moura@email.com', now(), now()),
    ('55667788990', 'Pedro Henrique Azevedo', '1984-03-19', 'Rua Imperial, 670', '81996784321', 'pedro.azevedo@email.com', now(), now()),
    ('66778899001', 'Queila Santana Lopes', '1996-07-02', 'Av. Rosa e Silva, 880', '81997893210', 'queila.lopes@email.com', now(), now()),
    ('77889900112', 'Rafael Batista Moreira', '1990-11-23', 'Rua Amélia, 510', '81998902109', 'rafael.moreira@email.com', now(), now()),
    ('88990011223', 'Sabrina Monteiro Duarte', '1998-05-06', 'Av. Agamenon Magalhães, 1500', '81999011098', 'sabrina.duarte@email.com', now(), now()),
    ('99001122334', 'Thiago Ramos Fonseca', '1987-02-14', 'Rua da Harmonia, 98', '81990120987', 'thiago.fonseca@email.com', now(), now()),
    ('10101010101', 'Ursula Barcellos Tavares', '1992-08-31', 'Rua do Espinheiro, 410', '81991230876', 'ursula.tavares@email.com', now(), now()),
    ('20202020202', 'Victor Hugo Lins', '1985-06-27', 'Av. João de Barros, 930', '81992349765', 'victor.lins@email.com', now(), now()),
    ('30303030303', 'Wesley Andrade Melo', '1999-01-04', 'Rua da União, 66', '81993458654', 'wesley.melo@email.com', now(), now()),
    ('40404040404', 'Xênia Rocha Peixoto', '1993-10-20', 'Rua do Príncipe, 510', '81994567543', 'xenia.peixoto@email.com', now(), now()),
    ('50505050505', 'Yago Cunha Bezerra', '1988-04-09', 'Av. Sul, 120', '81995676432', 'yago.bezerra@email.com', now(), now()),
    ('60606060606', 'Zilda Correia Nunes', '1984-12-01', 'Rua da Paz, 305', '81996785321', 'zilda.nunes@email.com', now(), now()),
    ('70707070707', 'Arthur Melo Torres', '1997-07-15', 'Rua da Alegria, 75', '81997894210', 'arthur.torres@email.com', now(), now()),
    ('80808080808', 'Bianca Pimentel Araujo', '1991-09-28', 'Av. Central, 980', '81998903109', 'bianca.araujo@email.com', now(), now()),
    ('90909090909', 'Caio Freire Antunes', '1986-05-03', 'Rua São Salvador, 140', '81999012098', 'caio.antunes@email.com', now(), now()),
    ('11111111111', 'Débora Vasconcelos Rios', '1994-02-26', 'Rua do Lima, 55', '81990121987', 'debora.rios@email.com', now(), now());
