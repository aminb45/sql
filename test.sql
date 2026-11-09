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
-- creation de table des produits
create table produits (
    id int primary key auto_increment,
    designation varchar (100) not null,
    -- (8,2) =  8 positions dont 2 après la virgule , 2 decimales = 99999,99
    prix_ht decimal (8,2) not null,
    stock int unsigned not null default 0,
    id_categorie int  not null,
    foreign key (id_categorie) references categories(id)
    
);