-- supprimer la base de données boutique si elle existe déjà
drop database if exists boutique;
-- créer la base de données boutique avec le jeu de caractères UTF-8 et la collation utf8mb4_general_ci
create database boutique character set utf8mb4 collate utf8mb4_general_ci;

-- se connecter à la base de données boutique
use boutique;
-- créer la table categories avec les colonnes id et libelle
create table categories (
    id int primary key auto_increment,
    libelle varchar(70) not null unique
);
