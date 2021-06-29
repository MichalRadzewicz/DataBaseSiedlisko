-- ZADANIE 1

-- A) Wypisanie wszystkich imion i nazwisk klientow, ktorzy maja imie oraz nazwisko na litere 'K'. Posortuj malejaco po nazwisku: 


SELECT imie,nazwisko
FROM klienci
WHERE imie LIKE 'K%' AND nazwisko LIKE 'K%'
ORDER BY nazwisko DESC;


--B) Wypisnie informacji na temat rezerwacji, które maj¹ zostaæ zrealizowane od jutra. Posortuj rosnaco: 

SELECT id_rezerwacji, data_od, data_do
FROM rezerwacje
WHERE data_od >CURRENT_DATE
ORDER BY data_od;


-- C)

-- Wypisz wszystkie informacje o domkach, ktorych cena za dobê kosztujê 150zl lub wiêcej.

SELECT id_domku, cena_noc, ilosc_osob
FROM domki
WHERE cena_noc >= 150;





-- D) Wypisz domki ktore pomieszcza pomiedzy 4 a 8 osob:

SELECT id_domku,ilosc_osob
FROM domki
WHERE ilosc_osob BETWEEN 4 AND 8;

-- E) Wypisz ilu aktualnych mieszkañców, posiada nazwisko szeœcioliterowe lub wiêksze. Zmieñ kolumnê wynikow¹ na "Ilosc osob":

SELECT COUNT(*) AS "Ilosc osob"
FROM wszyscy_mieszkancy
WHERE LENGTH(nazwisko) >=6;