-- Suppression de la table prescription_par_intervention
DROP TABLE IF EXISTS prescription_par_intervention;

-- Suppression de la table concerner
DROP TABLE IF EXISTS concerner;

-- Suppression de la table proposer
DROP TABLE IF EXISTS proposer;

-- Suppression de la table faire
DROP TABLE IF EXISTS faire;

-- Suppression de la table garage
DROP TABLE IF EXISTS garage;

-- Suppression de la table prescription
DROP TABLE IF EXISTS prescription CASCADE;

-- Suppression de la table intervention
DROP TABLE IF EXISTS intervention CASCADE;

-- Suppression de la table vehicule
DROP TABLE IF EXISTS vehicule CASCADE;

-- Suppression de la table client
DROP TABLE IF EXISTS client CASCADE;
