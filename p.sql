


CREATE DATABASE projet1;
USE projet1;


-- creation des tableau

CREATE TABLE clients (
    Nclient int primary key,
     Nom varchar(255),
     Adresse varchar(255),
     Ntele VARCHAR(20)
);

CREATE TABLE voiture (
     NimNimmatriculationulation varchar(255) primary key,
     Marque varchar(255),
     Annee int
     modele varchar(255),

);


CREATE TABLE contrats (
     num int primary key,
     date_debut date,
     date_fin date,
     dure int,

     Nclient_client int ,
     Nclient_Nimmatriculation varchar(255) ,
     FOREIGN key(Nclient_client) REFERENCES clients(Nclient),
     FOREIGN key(Nclient_Nimmatriculation) REFERENCES voiture(Nimmatriculation)
);

-- insertion des donnes

INSERT INTO clients VALUES
 (1,"Fatima El Amri","Rabat, Maroc","0678901234"),
 (2,"Ahmed Sai","Casablanca, Maroc","0612345678");

INSERT INTO voiture VALUES
 ("1234ABC","Toyota","Corolla",2020),
 ("5678XYZ","Renault","Clio",2021);

INSERT INTO contrats VALUES
 (1,"2024-01-01","2024-01-10",10,1,"1234ABC"),
 (2,"2024-02-01","2024-02-05",5,2,"5678XYZ");

-- select statment

-- 1
select * from contrats 
join clients on clients.Nclient = contrats.Nclient_client
join voiture on voiture.Nimmatriculation = contrats.Nclient_Nimmatriculation;

-- 2
select * from contrats
where dure > 7;

-- 3

insert into clients values(3,"badr gaylan","Sale,Maroc","06598799");
insert into voiture values("1234ABC14","Dodge","Hell Cat",1994);
insert into contrats values(3,"2026-02-22","2028-02-22",7,3,"1234ABC14");



-- delete statment

delete from contrats 
where date_fin < "2024-1-1";

