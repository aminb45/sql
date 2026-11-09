learing SQL with an exercice where we did create a fake company database
# Base de données Boutique — SQL

Un projet d’entraînement avec MySQL pour apprendre à créer
des tables, insérer des données et écrire des requêtes SQL.

La base de données contient :
- 4 catégories de produits
- 100 produits fictifs
- Des tables pour les clients, les commandes et les lignes de commande

## Fichiers

- `structure.sql` : crée la base de données, les tables et leurs relations.
- `donnees.sql` : insère les catégories et les produits.

## Installation

Ouvrez le client MySQL depuis le dossier du projet, puis exécutez :

```sql
SOURCE structure.sql;
SOURCE donnees.sql;
```

Attention : `structure.sql` supprime et recrée la base `boutique`.
Toutes les données déjà présentes dans cette base sont effacées.

## Exemple de requête

Afficher les produits de la catégorie Informatique
dont le prix hors taxes est supérieur à 1000 :

```sql
SELECT *
FROM produits
WHERE id_categorie = 1
  AND prix_ht > 1000;
```

## Notions travaillées

- Création de bases de données et de tables
- Clés primaires et clés étrangères
- Contraintes NOT NULL et UNIQUE
- Insertion de données avec INSERT INTO
- Lecture des données avec SELECT
- Filtrage des résultats avec WHERE et AND