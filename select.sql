-- 1 vykreslená tabulka zvířat
CREATE VIEW view_zvirata AS SELECT
    z.id_zvire,
    z.jmeno,
    z.veterinarni_prohlidka,
    z.datum_umisteni,
    z.odhad_narozeni,
    z.popis,
    dz.nazev AS druh_zvirete,
    p.pohlavi,
    zar.nazev AS nazev_zarizeni,
    zar.adresa AS adresa_zarizeni
FROM
    "Zvirata" z
JOIN
    "Druhy_zvirat" dz ON z.id_druh = dz.id_druh
JOIN
    "Pohlavi" p ON z.id_poh = p.id_poh
JOIN
    "Zarizeni" zar ON z.id_zar = zar.id_zar;


--2 spočítám počečt zvířat každého druhu
CREATE VIEW view_druhy_zvirat AS
SELECT
    dz.id_druh,
    dz.nazev,
    COUNT(z.id_zvire) AS pocet_zvirat
FROM
    "Druhy_zvirat" dz
LEFT JOIN
    "Zvirata" z ON dz.id_druh = z.id_druh
GROUP BY
    dz.id_druh, dz.nazev;


--3 hledám podle tagu
SELECT
    z.jmeno,
    dz.nazev AS druh_zvirete,
    p.pohlavi,
    zar.nazev AS nazev_zarizeni
FROM
    "Zvirata" z
INNER JOIN
    "Druhy_zvirat" dz ON z.id_druh = dz.id_druh
INNER JOIN
    "Pohlavi" p ON z.id_poh = p.id_poh
INNER JOIN
    "Zarizeni" zar ON z.id_zar = zar.id_zar
WHERE
    z.popis LIKE '%starší%' OR z.popis LIKE '%hledá%'
ORDER BY
    dz;

--4 vyfiltruju zařízení, které mají více jak 3 zvířata s narozením dříve jak v roce 2021 (včetně)
SELECT
    z.id_zar,
    zar.nazev,
    COUNT(z.id_zvire) AS pocet_zvirat
FROM
    "Zvirata" z
INNER JOIN
    "Zarizeni" zar ON z.id_zar = zar.id_zar
WHERE
    z.odhad_narozeni <= 2021
GROUP BY
    z.id_zar, zar.nazev
HAVING
    COUNT(z.id_zvire) > 3
ORDER BY
    id_zar;


--5 spojím tabulky a vyfiltruju kolik zvířat od jakého druhu bylo umístěno do útulku nebo záchovné stanice po datu 1.1.2022
SELECT
    z.id_druh,
    dz.nazev,
    COUNT(z.id_zvire) AS pocet_zvirat
FROM
    "Zvirata" z
FULL OUTER JOIN
    "Druhy_zvirat" dz ON z.id_druh = dz.id_druh
WHERE
    z.datum_umisteni >= '2022-01-01'
GROUP BY
    z.id_druh, dz.nazev
ORDER BY
     pocet_zvirat;

