INSERT INTO Typy_zarizeni( id_typ, nazev, zkratka) VALUES (00, 'Záchranná stanice', 'ZS'), (01, 'Útulek', 'AZ');

INSERT INTO Zarizeni( id_zar, nazev, adresa, odpovedna_osoba, max_kapacita, datum_zapsani, id_typ) VALUES
		(01, 'AniDef', 'Žim 59, 415 01 Žim', 'Barbora Benešová', 50, 2017-07-01, 01),
        (02, 'Útulek SOLEO', 'Vyhlídková 17, 702 00 Ostrava', 'Tomáš Prokop', 60, 2015-11-10, 01),
        (03, 'Zachranná stanice Modrého Křídla', 'Lesní cesta 45, 613 00 Brno', 'Monika Procházková', 45, 2020-03-20, 00),
        (04, 'Útulek ChruM', 'Sečská 809, 537 01 Chrudim', 'Alena Benešová', 57, 2011-05-05, 01),
        (05, 'Falco', 'Dolní Týnec 39, Třebušín 41201 Litoměřice', 'Petr Kovář', 35, 2013-06-13, 00);

INSERT INTO Zvirata( id_zvire, jmeno, veterinarni_prohlidka, datum_umisteni, odhad_narozeni, popis, id_druh, id_poh, id_zar) VALUES
(001, 'Max', 2023-12-10, 2017-07-21, 2012, 'Jeho nekonečná oddanost vyžaduje zkušeného a trpělivého majitele, který ocení jeho jedinečnou osobnost a bude mu věnovat lásku a péči, kterou si zaslouží.', 02, 00, 01),
(002, 'Monte', 2023-12-10, 2022-01-05, 2019, 'Statečný pes, připravený na nový domov.', 02, 00, 02),
(003, 'Bella', 2023-11-20, 2024-02-10, 2020, 'Nádherná fena s milým temperamentem.', 02, 01, 03), 
(004, 'Luna', 2024-01-10, 2024-03-15, 2017, 'Energická a hravá kočka.', 03 , 01, 04), 
(005, 'Daisy', 2023-10-25, 2024-04-20, 2023, 'Velmi přátelská a loajální fena.', 02, 01, 05),
(006, 'Charlie', 2024-02-05, 2024-05-10, 2015, 'Klidný a milý, starší kocour, ideální společník do bytu.', 02, 00, 02),
(007, 'Rocky', 2023-09-30, 2024-06-05, 2022, 02, 00, 03),
(008, 'Molly', 2024-03-20, 2024-07-15, 2019, 'Molly je kravička, která byla odebrána z hrozných podmínek a zaslouží si konečně čistý přístřešek', 09,01, 04),
(009, 'Toby', 2023-08-15, 2024-08-20, 2014, 'Starší pes s láskyplnou povahou. I na svůj věk je velmi akční.', 02, 00, 05),
(010, 'Lucy', 2024-04-10, 2024-01-25, 2021, 'Velká společenská fena s láskyplným srdcem. Vhodná k malým dětem', 02, 01, 02),
(011, 'Cooper', 2023-07-20, 2022-10-10, 2018, 'Klidný a oddaný pes, který hledá tu pravou rodinu.', 02, 00, 03),
(012, 'Sasha', 2023-12-15, 2023-11-15, 2020, 03, 01, 04),
(013, 'Buddy' ,2023-06-10, 2023-12-05, 2017, 02, 00, 05),
(014, 'Bailey', 2024-03-20, 2024-01-10, 2022, 'Umazlená velmi chlupatá kočka, která nepohrdne dobrou mňamkou.', 03, 01, 02),
(015, 'Duke', 2024-02-25, 2024-02-15, 2012, 'Starší pes Duke hledá místo na dožití.', 02, 00, 03),
(016, 'Sadie', 2024-04-25, 2024-04-20, 2024, 'Malé náročnější štěně, které hledá místo, kde vyroste s láskou.', 02, 01, 01),
(017, 'Vendelína', 2024-05-20, 2024-05-05, 2023, 04, 01, 04),
(018, 'Stelinka', 2024-04-13, 2024-04-03, 2024, 'Stelinka se do útulku dostala jako čerstvě narozená kozička, kterou matka odmítla.', 09, 01, 01);

INSERT INTO Pohlavi( id, pohlavi) VALUES (00, 'Samec'), (01, 'Samice');

INSERT INTO Druhy_zvirat( id, nazev) VALUES (01, 'Kůň/Poník'), (02, 'Pes'), (03, 'Kočka'), (04, 'Králík'), (05, 'Morče'), 
			(06, 'Drobný hlodavec'), (07, 'Ptactvo'), (08, 'Exotické zvíře'), (09, 'Malé hospodářské zvíře'), 
            (10, 'Velké hospodářské zvíře'), (11, 'Volně žijící zvíře'); 

INSERT INTO Zamestnanci( id_zam, jmeno, prijmeni, kontakt, id_zar, id_poz) VALUES
			(01, 'Barbora','Benešová', '777 123 456', 01, 0),
			(02, 'Michaela','Němcová', '777 654 321', 03, 13),
			(03, 'Vojtěch','Svoboda', '608 987 654', 04, 18),
			(04, 'Ivana','Lišková', '733 123 987', 02, 2),
			(05, 'Barbora','Šnoblová', '608 321 654', 01, 1), 
			(06, 'Kristýna','Opavová', '775 987 321', 05, 19), 
			(07, 'Jitka','Friedrichová', '724 456 123', 01, 7), 
			(08, 'Pavel','Dušek', '731 987 654', 05, 6),
			(09, 'Alena','Andrtová', '602 987 456', 01, 2), 
			(10, 'Adéla','Zahradníčková', '777 321 654', 01, 10),
			(11, 'Michaela','Vitnerová', '777 654 321', 01, 9),
			(12, 'Lucie','Schwertlingová', '608 987 654', 01, 16), 
			(13, 'Jakub','Rudný', '775 987 321', 02, 11),
			(14, 'Lucie','Jelínková', '731 987 654', 01, 17),
			(15, 'Jana','Pěkná', '775 654 321', 01, 18),
			(16, 'Eva','Nováková', '777 123 456', 02, 3),
			(17, 'Petr','Kovář', '605 987 654', 05, 7),
			(18, 'Markéta','Tomanová', '736 654 321', 03, 11),
			(19, 'Jiří','Král', '777 456 789', 04, 16),
			(20, 'Lenka','Procházková', '608 321 654', 02, 1),
			(21, 'Kateřina','Řežábková', '736 654 321', 01, 12), 
			(22, 'Alena','Benešová', '724 456 123', 04, 12),
			(23, 'Marek','Kratochvíl', '731 654 987', 03, 17),
			(24, 'Martina','Štěpánová', '602 987 456', 02, 4),
			(25, 'Lukáš','Horák', '777 321 654', 05, 9),
			(26, 'Kristina','Nowakowska', '605 987 654', 01, 5),
			(27, 'Jakub','Šimáček', '775 987 321', 05, 8),
			(28, 'Šárka', 'Gramskopfová', '777 456 789', 01, 3), 
			(29, 'Tereza','Vrbová', '731 654 987', 01, 8),
			(30, 'Lucie','Pospíšilová', '775 654 321', 03, 14),
			(31, 'Tomáš','Prokop', '731 123 987', 02, 0),
			(32, 'Barbora','Holá', '604 987 321', 04, 19),
			(33,'Adam','Mašek' ,'608 321 987', 02, 10),
			(34, 'Monika','Procházková', '731 987 654', 03, 1),
			(35, 'Petr','Buchař', '605 654 321', 04, 20),
			(36, 'Kateřina','Dvořáková', '777 321 654', 05, 5),
			(37, 'Dita','Buchlová', '733 123 987', 01, 11), 
			(38, 'Eva','Králová', '731 987 654', 03,16);

INSERT INTO Pozice(id, nazev) VALUES (0, 'Zakladatel/ka'), (1, 'Ošetřovatel/ka'), (2, 'Zoolog'), (3, 'Veterinář/ka'), 
			(4, 'Rehabilitační pracovník/pracovnice'), (5, 'Jednatel/ka'), (6, 'Odchyt zvířat'), (7, 'Pomocný ošetřoval/ka'), 
            (8, 'Cvičitel'), (9, 'Administrace eshopu'), (10, 'Manažer sociálních sítí'), (11, 'Poradatel aukci'), (12, 'Ucetni'), 
            (13, 'Udrzbar'), (14, 'Psycholog'), (15, 'Recepční'), (16, 'Fotograf'), (17, 'Výjezdový pracovník'), (18, 'Dočaskář/ka'), (19, 'Agility');

INSERT INTO Dobrovolnici (id_dob, jmeno, prijmeni, kontakt, pocet_nastev, id_zar) VALUES 
	(0, 'Petr','Novák', '777 123 456', 3, 2), (1, 'Martina','Svobodová', '605 987 654', null, 4),
    (2, 'Jan','Novotný', '736 654 321', null, 4), (3, 'Kateřina','Dvořáková', '777 456 789', 7, 1),
    (4, 'Jiří','Procházka',	'608 321 654', null, 3), (5, 'Veronika','Pospíšilová', '775 987 321', 6, 2),
    (6, 'Tomáš','Kučera', '724 456 123', 1, 1), (7, 'Lucie','Marečková', '731 654 987', null, 2),
    (8, 'Martin','Čihák', '602 987 456', 4,  2), (9, 'Tereza','Vávrová', '777 321 654', 11, 1),
    (10, 'Marek','Hájek', '777 654 321', null, 3), (11, 'Barbora','Malá', '608 987 654', null, 5 ),
    (12, 'Lukáš','Ševčík', '733 123 987', 5, 3), (13, 'Karolína','Adamcová', '731 987 654', 1, 5),
    (14,'Zbyněk', 'Nováček', '777 123 456', 3, 1 );
    

