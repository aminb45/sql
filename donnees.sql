 -- connect to the boutique database
use boutique;
-- insertion de lignes dans la table categories
insert into categories (libelle) values ('Informatique');
insert into categories (libelle) values ('telephonie');
insert into categories (libelle) values ('accessoires');
insert into categories (libelle) values ('reseau');
-- affichage de toutes les lignes de la table categories
select * from categories;
