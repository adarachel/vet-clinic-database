/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id serial PRIMARY KEY,
    name varchar(100),
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg decimal,
    species varchar(100)
);

CREATE TABLE owners (
    id serial PRIMARY KEY,
    full_name varchar(100),
    age integer
);

CREATE TABLE species (
    id serial PRIMARY KEY,
    name varchar(100)
);

-- Make sure that id is set as auto-incremented PRIMARY KEY
-- Remove column species
-- Add column species_id which is a foreign key referencing species table
-- Add column owner_id which is a foreign key referencing the owners table

ALTER TABLE animals
    DROP COLUMN species,
    ADD COLUMN species_id integer REFERENCES species(id),
    ADD COLUMN owner_id integer REFERENCES owners(id);
