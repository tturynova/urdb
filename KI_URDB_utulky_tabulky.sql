CREATE TABLE `Typy_zarizeni` (
  `id_typ` int PRIMARY KEY NOT NULL,
  `nazev` varchar(64) NOT NULL,
  `zkratka` varchar(32) NOT NULL
);

CREATE TABLE `Zarizeni` (
  `id_zar` int PRIMARY KEY NOT NULL,
  `nazev` varchar(64) NOT NULL,
  `adresa` varchar(64) NOT NULL,
  `odpovedna_osoba` varchar(64) NOT NULL,
  `max_kapacita` int NOT NULL,
  `kontakt` varchar(32) NOT NULL,
  `datum_zapsani` date NULL,
  `id_typ` int NOT NULL
);

CREATE TABLE `Zvirata` (
  `id_zvire` int PRIMARY KEY NOT NULL,
  `jmeno` varchar(64) NOT NULL,
  `veterinarni_prohlidka` date NOT NULL,
  `datum_umisteni` date NOT NULL,
  `odhad_narozeni` date NULL,
  `popis` text NULL,
  `id_druh` int NOT NULL,
  `id_poh` int NOT NULL,
  `id_zar` int NOT NULL
);

CREATE TABLE `Pohlavi` (
  `id_poh` int PRIMARY KEY NOT NULL,
  `pohlavi` varchar(32) NOT NULL
);

CREATE TABLE `Druhy_zvirat` (
  `id_druh` int PRIMARY KEY NOT NULL,
  `nazev` varchar(64) NOT NULL
);

CREATE TABLE `Adopce` (
  `id_ado` int PRIMARY KEY NOT NULL,
  `pocet_adoptovanych` int NULL,
  `novy_majitel` varchar(64) NOT NULL,
  `datum` date NOT NULL,
  `id_zvire` int NOT NULL
);

CREATE TABLE `Odchyty` (
  `id_odch` int PRIMARY KEY NOT NULL,
  `datum` date NOT NULL,
  `lokalita` varchar(64) NOT NULL,
  `pocet_odchycenych` int NOT NULL,
  `id_zar` int NOT NULL
);

CREATE TABLE `Opakovane_odchyty` (
  `id_odch` int NOT NULL,
  `id_zam` int NOT NULL
);

CREATE TABLE `Zamestnanci` (
  `id_zam` int PRIMARY KEY NOT NULL,
  `jmeno` varchar(64) NOT NULL,
  `prijmeni` varchar(64) NOT NULL,
  `kontakt` varchar(32) NOT NULL,
  `id_zar` int NOT NULL,
  `id_poz` int NOT NULL
);

CREATE TABLE `Pozice` (
  `id_poz` int PRIMARY KEY NOT NULL,
  `nazev` varchar(64) NOT NULL
);

CREATE TABLE `Dobrovolnici` (
  `id_dob` int PRIMARY KEY NOT NULL,
  `jmeno` varchar(64) NOT NULL,
  `prijmeni` varchar(64) NOT NULL,
  `kontakt` varchar(32) NOT NULL,
  `pocet_nastev` int null,
  `id_zar` int NOT NULL
);

ALTER TABLE `Zarizeni` ADD FOREIGN KEY (`id_typ`) REFERENCES `Typy_zarizeni` (`id_typ`);

ALTER TABLE `Zvirata` ADD FOREIGN KEY (`id_druh`) REFERENCES `Druhy_zvirat` (`id_druh`);
ALTER TABLE `Zvirata` ADD FOREIGN KEY (`id_poh`) REFERENCES `Pohlavi` (`id_poh`);
ALTER TABLE `Zvirata` ADD FOREIGN KEY (`id_zar`) REFERENCES `Zarizeni` (`id_zar`);

ALTER TABLE `Adopce` ADD FOREIGN KEY (`id_zvire`) REFERENCES `Zvirata` (`id_zvire`);

ALTER TABLE `Odchyty` ADD FOREIGN KEY (`id_zar`) REFERENCES `Zarizeni` (`id_zar`);

ALTER TABLE `Opakovane_odchyty` ADD FOREIGN KEY (`id_odch`) REFERENCES `Odchyty` (`id_odch`);
ALTER TABLE `Opakovane_odchyty` ADD FOREIGN KEY (`id_zam`) REFERENCES `Zamestnanci` (`id_zam`);

ALTER TABLE `Zamestnanci` ADD FOREIGN KEY (`id_zar`) REFERENCES `Zarizeni` (`id_zar`);
ALTER TABLE `Zamestnanci` ADD FOREIGN KEY (`id_poz`) REFERENCES `Pozice` (`id_poz`);

ALTER TABLE `Dobrovolnici` ADD FOREIGN KEY (`id_zar`) REFERENCES `Zarizeni` (`id_zar`);


POSTGRES
CREATE TABLE "Typy_zarizeni" (
  "id_typ" int PRIMARY KEY NOT NULL,
  "nazev" varchar(64) NOT NULL,
  "zkratka" varchar(32) NOT NULL
);

CREATE TABLE "Zarizeni" (
  "id_zar" int PRIMARY KEY NOT NULL,
  "nazev" varchar(64) NOT NULL,
  "adresa" varchar(64) NOT NULL,
  "odpovedna_osoba" varchar(64) NOT NULL,
  "max_kapacita" int NOT NULL,
  "kontakt" varchar(32) NOT NULL,
  "datum_zapsani" date NULL,
  "id_typ" int NOT NULL
);

CREATE TABLE "Zvirata" (
  "id_zvire" int PRIMARY KEY NOT NULL,
  "jmeno" varchar(64) NOT NULL,
  "veterinarni_prohlidka" date NOT NULL,
  "datum_umisteni" date NOT NULL,
  "odhad_narozeni" date NULL,
  "popis" text NULL,
  "id_druh" int NOT NULL,
  "id_poh" int NOT NULL,
  "id_zar" int NOT NULL
);

CREATE TABLE "Pohlavi" (
  "id_poh" int PRIMARY KEY NOT NULL,
  "pohlavi" varchar(32) NOT NULL
);

CREATE TABLE "Druhy_zvirat" (
  "id_druh" int PRIMARY KEY NOT NULL,
  "nazev" varchar(64) NOT NULL
);

CREATE TABLE "Adopce" (
  "id_ado" int PRIMARY KEY NOT NULL,
  "pocet_adoptovanych" int NULL,
  "novy_majitel" varchar(64) NOT NULL,
  "datum" date NOT NULL,
  "id_zvire" int NOT NULL
);

CREATE TABLE "Odchyty" (
  "id_odch" int PRIMARY KEY NOT NULL,
  "datum" date NOT NULL,
  "lokalita" varchar(64) NOT NULL,
  "pocet_odchycenych_zvirat" int NULL,
  "id_zar" int NOT NULL
);

CREATE TABLE "Opakovane_odchyty" (
  "id_odch" int NOT NULL,
  "id_zam" int NOT NULL
);

CREATE TABLE "Zamestnanci" (
  "id_zam" int PRIMARY KEY NOT NULL,
  "jmeno" varchar(64) NOT NULL,
  "prijmeni" varchar(64) NOT NULL,
  "kontakt" varchar(32) NOT NULL,
  "id_zar" int NOT NULL,
  "id_poz" int NOT NULL
);

CREATE TABLE "Pozice" (
  "id_poz" int PRIMARY KEY NOT NULL,
  "nazev" varchar(64) NOT NULL
);

CREATE TABLE "Dobrovolnici" (
  "id_dob" int PRIMARY KEY NOT NULL,
  "jmeno" varchar(64) NOT NULL,
  "prijmeni" varchar(64) NOT NULL,
  "kontakt" varchar(32) NOT NULL,
  "pocet_nastev" int null,
  "id_zar" int NOT NULL
);

ALTER TABLE "Zarizeni" ADD FOREIGN KEY ("id_typ") REFERENCES "Typy_zarizeni" ("id_typ");

ALTER TABLE "Zvirata" ADD FOREIGN KEY ("id_druh") REFERENCES "Druhy_zvirat" ("id_druh");
ALTER TABLE "Zvirata" ADD FOREIGN KEY ("id_poh") REFERENCES "Pohlavi" ("id_poh");
ALTER TABLE "Zvirata" ADD FOREIGN KEY ("id_zar") REFERENCES "Zarizeni" ("id_zar");

ALTER TABLE "Adopce" ADD FOREIGN KEY ("id_zvire") REFERENCES "Zvirata" ("id_zvire");

ALTER TABLE "Odchyty" ADD FOREIGN KEY ("id_zar") REFERENCES "Zarizeni" ("id_zar");

ALTER TABLE "Opakovane_odchyty" ADD FOREIGN KEY ("id_odch") REFERENCES "Odchyty" ("id_odch");
ALTER TABLE "Opakovane_odchyty" ADD FOREIGN KEY ("id_zam") REFERENCES "Zamestnanci" ("id_zam");

ALTER TABLE "Zamestnanci" ADD FOREIGN KEY ("id_zar") REFERENCES "Zarizeni" ("id_zar");
ALTER TABLE "Zamestnanci" ADD FOREIGN KEY ("id_poz") REFERENCES "Pozice" ("id_poz");

ALTER TABLE "Dobrovolnici" ADD FOREIGN KEY ("id_zar") REFERENCES "Zarizeni" ("id_zar");

ALTER TABLE "Zarizeni"
    ADD CONSTRAINT fk_zar_typ FOREIGN KEY (id_typ) REFERENCES "Typy_zarizeni" (id_typ);

ALTER TABLE "Zvirata"
    ADD CONSTRAINT fk_zvire_druh FOREIGN KEY (id_druh) REFERENCES "Druhy_zvirat" (id_druh),
    ADD CONSTRAINT fk_zvire_poh FOREIGN KEY (id_poh) REFERENCES "Pohlavi" (id_poh),
    ADD CONSTRAINT fk_zvire_zar FOREIGN KEY (id_zar) REFERENCES "Zarizeni" (id_zar);

ALTER TABLE "Adopce"
    ADD CONSTRAINT fk_ado_zvire FOREIGN KEY (id_zvire) REFERENCES "Zvirata" (id_zvire);

ALTER TABLE "Odchyty"
    ADD CONSTRAINT fk_odch_zar FOREIGN KEY ("id_zar") REFERENCES "Zarizeni" (id_zar);

ALTER TABLE "Opakovane_odchyty"
    ADD FOREIGN KEY (id_odch) REFERENCES "Odchyty" (id_odch),
    ADD FOREIGN KEY (id_zam) REFERENCES "Zamestnanci" (id_zam);

ALTER TABLE "Zamestnanci"
    ADD CONSTRAINT fk_zam_zar FOREIGN KEY (id_zar) REFERENCES "Zarizeni" (id_zar),
    ADD CONSTRAINT fk_zam_poz FOREIGN KEY (id_poz) REFERENCES "Pozice" (id_poz);

ALTER TABLE "Dobrovolnici"
    ADD CONSTRAINT fk_dob_zar FOREIGN KEY (id_zar) REFERENCES "Zarizeni" (id_zar);


ALTER TABLE "Zarizeni" ADD FOREIGN KEY (id_typ) REFERENCES "Typy_zarizeni" (id_typ);


ALTER TABLE "Zarizeni" ADD FOREIGN KEY (id_typ) REFERENCES "Typy_zarizeni" (id_typ);

ALTER TABLE "Zvirata" ADD FOREIGN KEY (id_druh) REFERENCES "Druhy_zvirat" (id_druh);
ALTER TABLE "Zvirata" ADD FOREIGN KEY (id_poh) REFERENCES "Pohlavi" (id_poh);
ALTER TABLE "Zvirata" ADD FOREIGN KEY (id_zar) REFERENCES "Zarizeni" (id_zar);

ALTER TABLE "Adopce" ADD FOREIGN KEY (id_zvire) REFERENCES "Zvirata" (id_zvire);

ALTER TABLE "Odchyty" ADD FOREIGN KEY (id_zar) REFERENCES "Zarizeni" (id_zar);

ALTER TABLE "Opakovane_odchyty" ADD FOREIGN KEY (id_odch) REFERENCES "Odchyty" (id_odch);
ALTER TABLE "Opakovane_odchyty" ADD FOREIGN KEY (id_zam) REFERENCES "Zamestnanci" (id_zam);

ALTER TABLE "Zamestnanci" ADD FOREIGN KEY (id_zar) REFERENCES "Zarizeni" (id_zar);
ALTER TABLE "Zamestnanci" ADD FOREIGN KEY (id_poz) REFERENCES "Pozice" (id_poz);

ALTER TABLE "Dobrovolnici" ADD FOREIGN KEY (id_zar) REFERENCES "Zarizeni" (id_zar);

