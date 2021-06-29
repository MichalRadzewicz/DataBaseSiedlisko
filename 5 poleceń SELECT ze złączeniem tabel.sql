--A)

--Wybierz wszystkich klientow, które spêdzaly wakacje w pokoju luksusowym.  Zmieñ kolumnê wynikow¹ na "Pokoj luksusowy":

SELECT id_klienta,imie,nazwisko
FROM klienci INNER JOIN rezerwacje
On klienci.id_klienta = rezerwacje.Klienci_id_klienta
INNER JOIN domki
ON rezerwacje.Domki_id_domku = domki.id_domku
INNER JOIN Kategorie
ON domki.Kategorie_id_kategorii_pokoju = kategorie.id_kategorii_pokoju
WHERE kategorie.kategoria_pokoju = 'Pokoj luksusowy';

-- B)

-- Wypisz ile zaplacil Wojciech Gola za swoj tygodniowy pobyt w Siedlisku. Zmieñ kolumnê wynikow¹ na Zap³acono":

SELECT (cena_noc* 7) AS "Zaplacono"
FROM domki 
INNER JOIN rezerwacje
ON domki.id_domku = rezerwacje.domki_id_domku
INNER JOIN klienci
ON rezerwacje.klienci_id_klienta = klienci.id_klienta
WHERE klienci.imie = 'Wojciech' AND klienci.nazwisko = 'Gola';

--C)

-- Wypisz ile razy Adam Malysz zarezerwowal nocleg w Siedlisku. Zmieñ kolumnê wynikow¹ na "Zarezerwowa³":


SELECT COUNT(*) AS "Zarezerwowal"
FROM rezerwacje 
INNER JOIN klienci
ON rezerwacje.klienci_id_klienta = klienci.id_klienta
WHERE klienci.imie = 'Adam' AND klienci.nazwisko = 'Malysz';

--D)

--Wypisz rezerwacje z czerwca bie¿acego roku klientów, których nazwisko zaczyna siê na literê „K”. Podaj imiê, nazwisko oraz numer Domku.

SELECT imie,nazwisko,id_domku
FROM klienci
INNER JOIN rezerwacje 
ON klienci.id_klienta = rezerwacje.klienci_id_klienta
INNER JOIN domki
ON rezerwacje.domki_id_domku = domki.id_domku
WHERE rezerwacje.data_od >= '2021-06-01'
AND rezerwacje.data_do <= '2021-06-30'
AND klienci.nazwisko LIKE 'K%';


--E)

--Wypisz jakie domki byly uzywane w Siedlisku. Zmieñ kolumnê wynikow¹ na "Uzywane domki":

SELECT DISTINCT id_domku AS "Uzywane domki:"
FROM domki
INNER JOIN rezerwacje
ON domki.id_domku = rezerwacje.domki_id_domku
WHERE rezerwacje.domki_id_domku IS NOT NULL ;
