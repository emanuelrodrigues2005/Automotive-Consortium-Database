/*
  Arquivo: setup/create_automotive_consortium_database.sql
  Objetivo: Criar o banco de dados inicial e definir padrão de caracteres
*/

create database if not exists automotive_consortium
default character set utf8mb4
default collate utf8mb4_unicode_ci;

-- Seleciona o banco para que os próximos comandos (nas outras abas) rodem nele 
use automotive_consortium;
