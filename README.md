# Fedi Auctions — Plateforme d’enchères

Application PHP/MySQL permettant de consulter des lots, se connecter avec un compte client et déposer des offres sur les enchères ouvertes.

## Fonctionnalités
- Catalogue avec prix de départ, meilleure offre, nombre d’offres et statut de l’enchère
- Connexion client par CIN et mot de passe
- Migration progressive des anciens mots de passe en clair vers `password_hash`
- Dépôt d’offres avec validation serveur et verrouillage transactionnel du produit
- Protection CSRF, sessions régénérées après connexion, requêtes préparées et échappement HTML

## Installation locale
1. Démarrer Apache et MySQL avec XAMPP/WAMP.
2. Créer la base `ikode_auction` et importer `DB/ikode_auction.sql`.
3. Exécuter une seule fois `DB/migration.sql` pour agrandir la colonne de mot de passe.
4. Vérifier les paramètres dans `config.php`.
5. Ouvrir `index.php` depuis le serveur local.

## Comptes de démonstration
Le dump SQL contient des comptes d’exemple avec des mots de passe historiques en clair. À la première connexion réussie, le mot de passe est converti en hash. Ces identifiants sont publics et ne doivent jamais être réutilisés en production. Changez-les et remplacez les données de démonstration avant tout déploiement.

## Stack
PHP 8+, MySQL/MariaDB, HTML et CSS.

## Limites
Projet pédagogique, sans paiement réel, vérification d’identité ni processus de modération des lots. Le nom de base de données historique reste `ikode_auction` pour compatibilité avec le dump existant.

Brand: Fedi Auctions.
