 -- connect to the boutique database
use boutique;
-- insertion des categories : ignorer celles deja presentes
insert ignore into categories (libelle) values ('Informatique');
insert ignore into categories (libelle) values ('telephonie');
insert ignore into categories (libelle) values ('accessoires');
insert ignore into categories (libelle) values ('reseau');
-- affichage de toutes les lignes de la table categories
select * from categories;
-- vider la  table delete  * from categories;

-- Donnees fictives pour les exercices SQL : 100 produits, 25 par categorie.
SET NAMES utf8mb4;

-- Recuperer les identifiants des categories sans supposer leur numerotation.
SET @categorie_informatique = (SELECT id FROM categories WHERE libelle = 'Informatique');
SET @categorie_telephonie = (SELECT id FROM categories WHERE libelle = 'telephonie');
SET @categorie_accessoires = (SELECT id FROM categories WHERE libelle = 'accessoires');
SET @categorie_reseau = (SELECT id FROM categories WHERE libelle = 'reseau');

-- Les identifiants des produits sont generes automatiquement.
INSERT INTO produits (designation, prix_ht, stock, id_categorie) VALUES
    -- Informatique : 25 produits
    ('Ordinateur portable 14 pouces bureautique', 499.90, 18, @categorie_informatique),
    ('Ordinateur portable 15 pouces polyvalent', 649.00, 12, @categorie_informatique),
    ('Ordinateur portable 17 pouces multimédia', 799.90, 7, @categorie_informatique),
    ('Ordinateur portable 13 pouces ultraléger', 899.00, 9, @categorie_informatique),
    ('Ordinateur portable 16 pouces création', 1199.90, 5, @categorie_informatique),
    ('PC de bureau compact bureautique', 399.00, 20, @categorie_informatique),
    ('PC de bureau polyvalent 16 Go', 599.90, 14, @categorie_informatique),
    ('PC de bureau jeu 32 Go', 1299.00, 4, @categorie_informatique),
    ('Mini PC silencieux 8 Go', 249.90, 16, @categorie_informatique),
    ('Mini PC professionnel 16 Go', 449.00, 11, @categorie_informatique),
    ('Station de travail 64 Go', 1899.90, 3, @categorie_informatique),
    ('Ordinateur tout-en-un 24 pouces', 749.00, 6, @categorie_informatique),
    ('Écran 22 pouces Full HD', 99.90, 28, @categorie_informatique),
    ('Écran 24 pouces Full HD', 129.00, 35, @categorie_informatique),
    ('Écran 27 pouces QHD', 229.90, 17, @categorie_informatique),
    ('Écran 32 pouces UHD', 349.00, 0, @categorie_informatique),
    ('Écran portable 15 pouces', 179.90, 8, @categorie_informatique),
    ('SSD interne SATA 500 Go', 39.90, 48, @categorie_informatique),
    ('SSD interne NVMe 1 To', 69.00, 42, @categorie_informatique),
    ('SSD interne NVMe 2 To', 119.90, 23, @categorie_informatique),
    ('Disque dur interne 2 To', 54.90, 31, @categorie_informatique),
    ('Mémoire vive DDR4 8 Go', 24.90, 60, @categorie_informatique),
    ('Mémoire vive DDR4 16 Go', 39.00, 46, @categorie_informatique),
    ('Mémoire vive DDR5 32 Go', 99.90, 22, @categorie_informatique),
    ('Carte graphique 8 Go', 279.00, 10, @categorie_informatique),
    -- telephonie : 25 produits
    ('Smartphone compact 64 Go', 119.90, 32, @categorie_telephonie),
    ('Smartphone compact 128 Go', 159.00, 27, @categorie_telephonie),
    ('Smartphone 5G 128 Go noir', 249.90, 24, @categorie_telephonie),
    ('Smartphone 5G 128 Go bleu', 249.90, 19, @categorie_telephonie),
    ('Smartphone 5G 256 Go noir', 329.00, 15, @categorie_telephonie),
    ('Smartphone 5G 256 Go vert', 329.00, 13, @categorie_telephonie),
    ('Smartphone photo 256 Go', 449.90, 11, @categorie_telephonie),
    ('Smartphone photo 512 Go', 599.00, 6, @categorie_telephonie),
    ('Smartphone grand écran 128 Go', 219.90, 20, @categorie_telephonie),
    ('Smartphone grande autonomie 256 Go', 299.00, 17, @categorie_telephonie),
    ('Smartphone renforcé 128 Go', 279.90, 8, @categorie_telephonie),
    ('Smartphone renforcé 256 Go', 359.00, 5, @categorie_telephonie),
    ('Smartphone pliable 256 Go', 899.90, 0, @categorie_telephonie),
    ('Smartphone double SIM 64 Go', 139.00, 26, @categorie_telephonie),
    ('Smartphone double SIM 128 Go', 189.90, 21, @categorie_telephonie),
    ('Téléphone mobile à touches noir', 29.90, 44, @categorie_telephonie),
    ('Téléphone mobile à touches rouge', 29.90, 30, @categorie_telephonie),
    ('Téléphone mobile à clapet', 49.00, 18, @categorie_telephonie),
    ('Téléphone mobile senior grandes touches', 59.90, 23, @categorie_telephonie),
    ('Téléphone fixe filaire compact', 19.90, 38, @categorie_telephonie),
    ('Téléphone fixe filaire avec écran', 34.00, 29, @categorie_telephonie),
    ('Téléphone sans fil DECT simple', 39.90, 25, @categorie_telephonie),
    ('Téléphone sans fil DECT duo', 64.90, 16, @categorie_telephonie),
    ('Téléphone sans fil DECT trio', 89.00, 9, @categorie_telephonie),
    ('Téléphone sans fil avec répondeur', 54.90, 14, @categorie_telephonie),
    -- accessoires : 25 produits
    ('Souris filaire optique', 9.90, 85, @categorie_accessoires),
    ('Souris sans fil compacte', 19.90, 64, @categorie_accessoires),
    ('Souris ergonomique verticale', 29.00, 36, @categorie_accessoires),
    ('Clavier filaire AZERTY', 14.90, 72, @categorie_accessoires),
    ('Clavier sans fil AZERTY', 34.90, 43, @categorie_accessoires),
    ('Clavier mécanique rétroéclairé', 59.00, 24, @categorie_accessoires),
    ('Tapis de souris classique', 4.90, 120, @categorie_accessoires),
    ('Tapis de souris grand format', 14.00, 58, @categorie_accessoires),
    ('Casque audio filaire avec microphone', 24.90, 45, @categorie_accessoires),
    ('Casque audio Bluetooth', 49.90, 31, @categorie_accessoires),
    ('Écouteurs sans fil avec boîtier', 39.00, 50, @categorie_accessoires),
    ('Webcam Full HD avec microphone', 29.90, 28, @categorie_accessoires),
    ('Webcam UHD avec cache', 69.00, 0, @categorie_accessoires),
    ('Support pour ordinateur portable', 24.90, 39, @categorie_accessoires),
    ('Support de téléphone de bureau', 8.90, 76, @categorie_accessoires),
    ('Sacoche pour portable 15 pouces', 19.00, 48, @categorie_accessoires),
    ('Sac à dos pour portable 17 pouces', 34.90, 33, @categorie_accessoires),
    ('Clé USB 32 Go', 6.90, 150, @categorie_accessoires),
    ('Clé USB 64 Go', 9.90, 135, @categorie_accessoires),
    ('Clé USB 128 Go', 16.90, 95, @categorie_accessoires),
    ('Disque SSD externe 1 To', 89.00, 27, @categorie_accessoires),
    ('Chargeur USB-C 30 W', 19.90, 62, @categorie_accessoires),
    ('Chargeur USB-C 65 W', 34.00, 41, @categorie_accessoires),
    ('Batterie externe 10000 mAh', 24.90, 55, @categorie_accessoires),
    ('Hub USB-C 6 ports', 39.90, 32, @categorie_accessoires),
    -- reseau : 25 produits
    ('Routeur Wi-Fi double bande', 49.90, 24, @categorie_reseau),
    ('Routeur Wi-Fi 6 compact', 79.00, 18, @categorie_reseau),
    ('Routeur Wi-Fi 6 haut débit', 119.90, 12, @categorie_reseau),
    ('Routeur mobile 4G', 69.90, 16, @categorie_reseau),
    ('Routeur mobile 5G', 249.00, 7, @categorie_reseau),
    ('Kit Wi-Fi maillé 2 bornes', 139.90, 10, @categorie_reseau),
    ('Kit Wi-Fi maillé 3 bornes', 199.00, 6, @categorie_reseau),
    ('Répéteur Wi-Fi compact', 24.90, 35, @categorie_reseau),
    ('Répéteur Wi-Fi 6', 59.00, 22, @categorie_reseau),
    ('Point d''accès Wi-Fi intérieur', 89.90, 14, @categorie_reseau),
    ('Point d''accès Wi-Fi extérieur', 129.00, 0, @categorie_reseau),
    ('Switch Ethernet 5 ports Gigabit', 19.90, 48, @categorie_reseau),
    ('Switch Ethernet 8 ports Gigabit', 29.00, 39, @categorie_reseau),
    ('Switch Ethernet 16 ports Gigabit', 69.90, 20, @categorie_reseau),
    ('Switch Ethernet 24 ports Gigabit', 119.00, 9, @categorie_reseau),
    ('Switch PoE 8 ports Gigabit', 99.90, 11, @categorie_reseau),
    ('Câble Ethernet Cat 6 de 1 m', 3.90, 180, @categorie_reseau),
    ('Câble Ethernet Cat 6 de 2 m', 4.90, 160, @categorie_reseau),
    ('Câble Ethernet Cat 6 de 5 m', 7.90, 125, @categorie_reseau),
    ('Câble Ethernet Cat 6 de 10 m', 12.90, 87, @categorie_reseau),
    ('Câble Ethernet Cat 6 de 20 m', 21.00, 54, @categorie_reseau),
    ('Adaptateur USB vers Ethernet Gigabit', 14.90, 63, @categorie_reseau),
    ('Adaptateur USB-C vers Ethernet Gigabit', 19.00, 57, @categorie_reseau),
    ('Adaptateur Wi-Fi USB double bande', 19.90, 46, @categorie_reseau),
    ('Kit CPL Gigabit 2 prises', 59.90, 26, @categorie_reseau);
