-- Création de la table client
CREATE TABLE client (
    numero_client INTEGER PRIMARY KEY,
    nom_client VARCHAR(50),
    prenom_client VARCHAR(50),
    adresse_mail VARCHAR(100),
    numero_telephone VARCHAR(20)
);

-- Création de la table vehicule
CREATE TABLE vehicule (
    numero_immatricule INTEGER PRIMARY KEY,
    date_mise_circulation DATE,
    modele VARCHAR(50),
    client_numero INT,
    FOREIGN KEY (client_numero) REFERENCES client(numero_client)
);

-- Création de la table intervention
CREATE TABLE intervention (
    numero_intervention INT PRIMARY KEY,
    duree INT,
    date_entree DATE,
    date_retour DATE,
    devis DECIMAL(10, 2),
    facture DECIMAL(10, 2)
);

-- Création de la table prescription
CREATE TABLE prescription (
    numero_prescription INT PRIMARY KEY,
    description TEXT,
    duree_prevu INTEGER,
    statut VARCHAR(50),
    date_realisation DATE,
    vehicule_numero INT,
    FOREIGN KEY (vehicule_numero) REFERENCES vehicule(numero_immatricule)
);

-- Création de la table garage
CREATE TABLE garage (
    numero_garage INT PRIMARY KEY,
    nom_garage VARCHAR(50),
    adresse_garage VARCHAR(100),
    numero_telephone VARCHAR(20)
);

-- Création de la table faire
CREATE TABLE faire (
    garage_numero INTEGER,
    id_type INTEGER,
    PRIMARY KEY (garage_numero, id_type),
    FOREIGN KEY (garage_numero) REFERENCES garage(numero_garage)
);

-- Création de la table proposer
CREATE TABLE proposer (
    garage_numero INTEGER,
    numero_prescription INTEGER,
    PRIMARY KEY (garage_numero, numero_prescription),
    FOREIGN KEY (garage_numero) REFERENCES garage(numero_garage),
    FOREIGN KEY (numero_prescription) REFERENCES prescription(numero_prescription)
);

-- Création de la table concerner
CREATE TABLE concerner (
    numero_prescription INTEGER,
    numero_intervention INTEGER,
    PRIMARY KEY (numero_prescription, numero_intervention),
    FOREIGN KEY (numero_prescription) REFERENCES prescription(numero_prescription),
    FOREIGN KEY (numero_intervention) REFERENCES intervention(numero_intervention)
);


-- Création de la table proposer
CREATE TABLE prescription_par_intervention (
    numero_intervention INTEGER,
    numero_prescription INTEGER,
    PRIMARY KEY (numero_intervention, numero_prescription),
    FOREIGN KEY (numero_intervention) REFERENCES intervention(numero_intervention),
    FOREIGN KEY (numero_prescription) REFERENCES prescription(numero_prescription)
);