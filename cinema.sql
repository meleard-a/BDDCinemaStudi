CREATE DATABASE IF NOT EXISTS studi_cinema CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE cinema (
  id_cinema INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nom VARCHAR(30) NOT NULL,
  adresse VARCHAR(60) NOT NULL,
  nbre_de_salle INTEGER NOT NULL
)ENGINE = INNODB;

CREATE TABLE salle (
  id_salle INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nom VARCHAR(30) NOT NULL,
  nbre_de_siege INTEGER NOT NULL,
  id_cinema INTEGER NOT NULL,
  FOREIGN KEY(id_cinema) REFERENCES cinema(id_cinema)
)ENGINE = INNODB;

CREATE TABLE film (
  id_film INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  titre VARCHAR(30) NOT NULL,
  duree TIME NOT NULL
)ENGINE = INNODB;

CREATE TABLE client (
  id_client INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nom VARCHAR(30) NOT NULL,
  email VARCHAR(30) NOT NULL
)ENGINE = INNODB;

CREATE TABLE tarif (
  id_tarif INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nom VARCHAR(30) NOT NULL,
  prix INTEGER NOT NULL
)ENGINE = INNODB;

CREATE TABLE administrateur (
  id_admin INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nom VARCHAR(30) NOT NULL,
  mail VARCHAR(30) NOT NULL,
  mot_de_passe VARCHAR(30) NOT NULL
)ENGINE = INNODB;

CREATE TABLE seance (
  id_seance INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  horaire_debut TIME NOT NULL,
  jour DATE NOT NULL,
  id_cinema INTEGER,
  FOREIGN KEY(id_cinema) REFERENCES cinema(id_cinema),
  id_film INTEGER NOT NULL,
  FOREIGN KEY(id_film) REFERENCES film(id_film),
  id_tarif INTEGER NOT NULL,
  FOREIGN KEY(id_tarif) REFERENCES tarif(id_tarif),
  id_admin INTEGER NOT NULL,
  FOREIGN KEY(id_admin) REFERENCES administrateur(id_admin)
)ENGINE = INNODB;

CREATE TABLE reservation (
  id_reservation INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  jour DATE NOT NULL,
  nbre_place INTEGER NOT NULL,
  id_client INTEGER NOT NULL,
  FOREIGN KEY(id_client) REFERENCES client(id_client),
  id_seance INTEGER NOT NULL,
  FOREIGN KEY(id_seance) REFERENCES seance(id_seance)
)ENGINE = INNODB;

GRANT ALL PRIVILEGES ON  studi_cinema . * TO 'Benedicte'@'localhost';
GRANT ALL PRIVILEGES ON  studi_cinema . * TO 'Rawne'@'localhost';
GRANT ALL PRIVILEGES ON  studi_cinema . * TO 'Rennolds'@'localhost';
GRANT ALL PRIVILEGES ON  studi_cinema . * TO 'Hollyar'@'localhost';
GRANT ALL PRIVILEGES ON  studi_cinema . * TO 'Marritt'@'localhost';
GRANT ALL PRIVILEGES ON  studi_cinema . * TO 'Mariel'@'localhost';
FLUSH PRIVILEGES;


insert into cinema (id_cinema, nom, adresse, nbre_de_salle) values (1, 'Strada', '30 Bd de Courtais, 03100 Montluçon', 5);
insert into cinema (id_cinema, nom, adresse, nbre_de_salle) values (2, 'Movie', '6 Pl. Charles de Gaulle, 33700 Mérignac', 10);
insert into cinema (id_cinema, nom, adresse, nbre_de_salle) values (3, 'Star', '16 Pl. Garibaldi, 06300 Nice', 3);
insert into cinema (id_cinema, nom, adresse, nbre_de_salle) values (4, 'Cinemaum', '24 Rue de la République, 38230 Pont-de-Chéruy', 8);
insert into cinema (id_cinema, nom, adresse, nbre_de_salle) values (5, 'Projector', '25 Av. du Rhin, 67100 Strasbourg', 5);
insert into cinema (id_cinema, nom, adresse, nbre_de_salle) values (6, 'Le théatre', '136 Rue Jean Jaurès, 29200 Brest', 6);

insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (1, 'Salle 1', 75, 1);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (2, 'Salle 2', 150, 1);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (3, 'Salle 3', 75, 1);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (4, 'Salle 4', 150, 1);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (5, 'Salle 5', 100, 1);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (6, 'Salle 1', 75, 2);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (7, 'Salle 2', 150, 2);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (8, 'Salle 3', 150, 2);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (9, 'Salle 4', 75, 2);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (10, 'Salle 5', 100, 2);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (11, 'Salle 6', 100, 2);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (12, 'Salle 7', 150, 2);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (13, 'Salle 8', 75, 2);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (14, 'Salle 9', 100, 2);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (15, 'Salle 10', 100, 2);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (16, 'Salle 1', 100, 3);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (17, 'Salle 2', 150, 3);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (18, 'Salle 3', 75, 3);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (19, 'Salle 1', 100, 4);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (20, 'Salle 2', 150, 4);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (21, 'Salle 3', 150, 4);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (22, 'Salle 4', 75, 4);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (23, 'Salle 5', 75, 4);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (24, 'Salle 6', 100, 4);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (25, 'Salle 7', 150, 4);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (26, 'Salle 8', 75, 4);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (27, 'Salle 1', 100, 5);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (28, 'Salle 2', 150, 5);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (29, 'Salle 3', 150, 5);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (30, 'Salle 4', 150, 5);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (31, 'Salle 5', 75, 5);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (32, 'Salle 1', 150, 6);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (33, 'Salle 2', 150, 6);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (34, 'Salle 3', 100, 6);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (35, 'Salle 4', 100, 6);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (36, 'Salle 5', 75, 6);
insert into salle (id_salle, nom , nbre_de_siege, id_cinema) values (37, 'Salle 6', 75, 6);

insert into film (id_film, titre, duree) values (1, 'Forrest Gump', '1:56');
insert into film (id_film, titre, duree) values (2, 'La Liste de Schindler', '2:15');
insert into film (id_film, titre, duree) values (3, 'La Ligne verte', '2:45');
insert into film (id_film, titre, duree) values (4, '12 hommes en colère', '2:04');
insert into film (id_film, titre, duree) values (5, 'Le Parrain', '2:45');
insert into film (id_film, titre, duree) values (6, 'Les Evadés', '1:24');
insert into film (id_film, titre, duree) values (7, 'Le Seigneur des anneaux : le retour du roi', '1:57');
insert into film (id_film, titre, duree) values (8, 'Le Roi Lion', '2:04');
insert into film (id_film, titre, duree) values (9, "Vol au-dessus d'un nid de coucou", '2:01');
insert into film (id_film, titre, duree) values (10, 'Captain Marvel', '2:23');

insert into client (id_client, nom, email) values (1, 'Bendite Banbrick', 'bbanbrick0@mysql.com');
insert into client (id_client, nom, email) values (2, 'Garner Pitkins', 'gpitkins1@arstechnica.com');
insert into client (id_client, nom, email) values (3, 'Hastings Brittian', 'hbrittian2@google.com');
insert into client (id_client, nom, email) values (4, 'Dalli Crouch', 'dcrouch3@umich.edu');
insert into client (id_client, nom, email) values (5, 'Nessie Nowak', 'nnowak4@stanford.edu');
insert into client (id_client, nom, email) values (6, 'Gabriela Schankel', 'gschankel5@rediff.com');
insert into client (id_client, nom, email) values (7, 'Marcel Calver', 'mcalver6@mit.edu');
insert into client (id_client, nom, email) values (8, 'Gary Notton', 'gnotton7@diigo.com');
insert into client (id_client, nom, email) values (9, 'Lori Gookey', 'lgookey8@reuters.com');
insert into client (id_client, nom, email) values (10, 'Emilie Colborn', 'ecolborn9@cmu.edu');

insert into tarif (id_tarif, nom, prix) values (1, 'tarif normal', 13);
insert into tarif (id_tarif, nom, prix) values (2, 'tarif réduit', 8);
insert into tarif (id_tarif, nom, prix) values (3, 'tarif matin', 7);
insert into tarif (id_tarif, nom, prix) values (4, 'tarif plud de 65 ans', 9);
insert into tarif (id_tarif, nom, prix) values (5, 'tarif moins de 12 ans', 6);

insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (1, '10:00', '01/10/2021', 1, 5, 3);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (2, '13:00', '01/10/2021', 1, 5, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (3, '16:00', '01/10/2021', 1, 5, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (4, '19:00', '01/10/2021', 1, 5, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (5, '22:00', '01/10/2021', 1, 5, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (6, '11:00', '01/10/2021', 1, 7, 3);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (7, '14:00', '01/10/2021', 1, 7, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (8, '17:00', '01/10/2021', 1, 7, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (9, '20:00', '01/10/2021', 1, 7, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (10, '10:00', '01/10/2021', 1, 10, 3);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (11, '13:00', '01/10/2021', 1, 10, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (12, '16:00', '01/10/2021', 1, 10, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (13, '19:00', '01/10/2021', 1, 10, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (14, '22:00', '01/10/2021', 1, 10, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (15, '11:00', '01/10/2021', 1, 1, 3);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (16, '14:00', '01/10/2021', 1, 1, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (17, '17:00', '01/10/2021', 1, 1, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (18, '20:00', '01/10/2021', 1, 1, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (19, '10:00', '01/10/2021', 1, 3, 3);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (20, '13:00', '01/10/2021', 1, 3, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (21, '16:00', '01/10/2021', 1, 3, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (22, '19:00', '01/10/2021', 1, 3, 1);
insert into seance (id_seance, horaire_debut, jour, id_cinema, id_film, id_tarif) values (23, '22:00', '01/10/2021', 1, 3, 1);

insert into reservation (id_reservation, jour, nbre_place, id_client, id_seance) values (1, '01/10/2021', 1, 5, 10);
insert into reservation (id_reservation, jour, nbre_place, id_client, id_seance) values (2, '01/10/2021', 2, 10, 18);
insert into reservation (id_reservation, jour, nbre_place, id_client, id_seance) values (3, '01/10/2021', 3, 7, 12);
insert into reservation (id_reservation, jour, nbre_place, id_client, id_seance) values (4, '01/10/2021', 2, 1, 17);
insert into reservation (id_reservation, jour, nbre_place, id_client, id_seance) values (5, '01/10/2021', 5, 3, 5);
insert into reservation (id_reservation, jour, nbre_place, id_client, id_seance) values (6, '01/10/2021', 2, 6, 13);
insert into reservation (id_reservation, jour, nbre_place, id_client, id_seance) values (7, '01/10/2021', 2, 4, 8);
insert into reservation (id_reservation, jour, nbre_place, id_client, id_seance) values (8, '01/10/2021', 1, 8, 8);
insert into reservation (id_reservation, jour, nbre_place, id_client, id_seance) values (9, '01/10/2021', 2, 2, 10);
insert into reservation (id_reservation, jour, nbre_place, id_client, id_seance) values (10,'01/10/2021', 4, 9, 21);

insert into administrateur (id_admin, nom, mail, mot_de_passe) values (1, 'Benedicte', 'gbenedicte0@xing.com', AES_ENCRYPT('Q4hsMrp', '$2y$10$QHg48eANC2yWAqNcC5WYJuomFbk3nKm5kwSxK2sdWwkk8KCDbKpoy'));
insert into administrateur (id_admin, nom, mail, mot_de_passe) values (2, 'Rawne', 'crawne1@princeton.edu', AES_ENCRYPT('KlkkEz2ws1XX', '$2y$10$FFj1rTg7VUlSOeITLrHtiujcYLFxHQpUq30m0pFRMiJGel9SGsRD.'));
insert into administrateur (id_admin, nom, mail, mot_de_passe) values (3, 'Rennolds', 'brennolds2@t-online.de', AES_ENCRYPT('FgCrqFmN', '$2y$10$4BO3l0g82X8HQplUN9uml.U9J7f/Kt9rzgTitKJ.uiNOxHxjRdXgi'));
insert into administrateur (id_admin, nom, mail, mot_de_passe) values (4, 'Hollyar', 'jhollyar3@parallels.com', AES_ENCRYPT('5Jrsq57KByG', '$2y$10$12UXkJLBYwt.3r/gFxyvuOg1lXKrh8yUrx0hhwT3ZcqGXAJO6eKoC'));
insert into administrateur (id_admin, nom, mail, mot_de_passe) values (5, 'Marritt', 'amarritt4@163.com', AES_ENCRYPT('QBG8BuvDanG', '$2y$10$Dg4JemcL.G6bnFK7Xd3zW.3WfiJDdeq8ivng1LMUDK2U/W8VFNsNG'));
insert into administrateur (id_admin, nom, mail, mot_de_passe) values (6, 'Mariel', 'amariel5@slideshare.net', AES_ENCRYPT('210kHCryu', '$2y$10$nk5vEAhUcRT6Q7pAewlqzefp1646xKExIYE05k7e/E7gnhAa4oWny'));