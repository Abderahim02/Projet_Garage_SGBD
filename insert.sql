

-- Insertion de données dans la table client
INSERT INTO client (numero_client, nom_client, prenom_client, adresse_mail, numero_telephone)
VALUES
    (1, 'Dupont', 'Jean', 'jean.dupont@email.com', '+33 6 12 34 56 78'),
    (2, 'Martin', 'Marie', 'marie.martin@email.com', '+33 6 98 76 54 32'),
    (3, 'Dubois', 'Pierre', 'pierre.dubois@email.com', '+33 6 45 67 89 01'),
    (4, 'Lefevre', 'Isabelle', 'isabelle.lefevre@email.com', '+33 6 23 45 67 89'),
    (5, 'Garcia', 'Antoine', 'antoine.garcia@email.com', '+33 6 87 65 43 21'),
    (6, 'Moreau', 'Sophie', 'sophie.moreau@email.com', '+33 6 54 32 10 98'),
    (7, 'Fontaine', 'Luc', 'luc.fontaine@email.com', '+33 6 09 87 65 43'),
    (8, 'Andre', 'Nathalie', 'nathalie.andre@email.com', '+33 6 76 54 32 10'),
    (9, 'Bertrand', 'Philippe', 'philippe.bertrand@email.com', '+33 6 34 56 78 90'),
    (10, 'Leroy', 'Christine', 'christine.leroy@email.com', '+33 6 56 78 90 12'),
    -- Ajoutez ici les 30 lignes restantes avec des données similaires
    (11, 'Roux', 'David', 'david.roux@email.com', '+33 6 78 90 12 34'),
    (12, 'Leclerc', 'Catherine', 'catherine.leclerc@email.com', '+33 6 90 12 34 56'),
    -- Ajoutez les 28 lignes restantes...
    (40, 'Marchand', 'Thierry', 'thierry.marchand@email.com', '+33 6 87 65 43 21');

-- Insertion de données dans la table vehicule
INSERT INTO vehicule (numero_immatricule, date_mise_circulation, modele, client_numero)
VALUES
    (101, '2020-01-15', 'Toyota Camry', 1),
    (102, '2018-05-20', 'Honda Accord', 2),
    (103, '2019-11-10', 'Ford Focus', 3);

-- Insertion de données dans la table intervention
INSERT INTO intervention (numero_intervention, date_entree, date_retour, devis, facture)
VALUES
    (1001, '2023-01-02','2023-01-04', 150.00, 180.00),
    (1002, '2023-02-15', '2023-02-18', 100.00, 120.00),
    (1003, '2023-03-20', '2023-03-23', 200.00, 240.00);

-- Insertion de données dans la table prescription
INSERT INTO prescription (numero_prescription, description, duree_prevu, statut, date_realisation, vehicule_numero)
VALUES
    (501, 'Changement d''huile', 4, 'En cours', '2023-01-05', 101),
    (502, 'Remplacement des freins', 3, 'Terminé', '2023-02-18', 102),
    (503, 'Diagnostic moteur', 2, 'En attente', '2023-03-25', 103);

-- Insertion de données dans la table garage
INSERT INTO garage (numero_garage, nom_garage, adresse_garage, numero_telephone)
VALUES
    (201, 'Garage Dupuis', '123 Rue Principale', '555-1234'),
    (202, 'Garage Martin', '456 Rue Secondaire', '555-5678'),
    (203, 'Garage Tremblay', '789 Rue Tertiaire', '555-9012');

-- Insertion de données dans la table faire
INSERT INTO faire (garage_numero, id_type)
VALUES
    (201, 1),
    (202, 2),
    (203, 3);

-- Insertion de données dans la table proposer
INSERT INTO proposer (garage_numero, numero_prescription)
VALUES
    (201, 501),
    (202, 502),
    (203, 503);

-- Insertion de données dans la table concerner
INSERT INTO concerner (numero_prescription, numero_intervention)
VALUES
    (501, 1001),
    (502, 1002),
    (503, 1003);

-- -- Insertion de données dans la table client
-- INSERT INTO client (numero_client, nom_client, prenom_client, adresse_mail, numero_telephone)
-- SELECT
--     id,
--     CONCAT('Nom', id),
--     CONCAT('Prenom', id),
--     CONCAT('client', id, '@email.com'),
--     CONCAT('+33 6 ', LPAD(FLOOR(RANDOM() * 100000000)::INTEGER, 8, '0'))
-- FROM generate_series(1, 100) as id;

-- -- Insertion de données dans la table vehicule
-- INSERT INTO vehicule (numero_immatricule, date_mise_circulation, modele, client_numero)
-- SELECT
--     id,
--     CURRENT_DATE - (id * interval '1 day'),
--     CONCAT('Modele', id),
--     id
-- FROM generate_series(1, 100) as id;

-- -- Insertion de données dans la table intervention
-- INSERT INTO intervention (numero_intervention, duree, date_entree, date_retour, devis, facture)
-- SELECT
--     id,
--     FLOOR(RANDOM() * 10)::INTEGER + 1,
--     CURRENT_DATE - (id * interval '2 day'),
--     CURRENT_DATE - ((id - 1) * interval '2 day'),
--     ROUND(RANDOM() * 1000, 2),
--     ROUND(RANDOM() * 1200, 2)
-- FROM generate_series(1, 100) as id;

-- -- Insertion de données dans la table prescription
-- INSERT INTO prescription (numero_prescription, description, duree_prevu, statut, date_realisation, vehicule_numero)
-- SELECT
--     id,
--     CONCAT('Description', id),
--     FLOOR(RANDOM() * 10)::INTEGER + 1,
--     CASE WHEN id % 2 = 0 THEN 'En cours' ELSE 'Terminé' END,
--     CURRENT_DATE - (id * interval '3 day'),
