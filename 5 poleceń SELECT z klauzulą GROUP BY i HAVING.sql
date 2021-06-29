--Wypisz ilo�� domk�w, kt�re moga pomiescic dana ilosc osob. Zastosuj nazw� kolumny 'ilo�� domk�w':

SELECT  ilosc_osob, COUNT(*) AS "Ilo�� domk�w"
FROM Domki
GROUP BY ilosc_osob;



-- Wypisz ilo�� domk�w za cen� wieksza lub rowna 200, nazwij pierwsz� kolumn� jako "Ilo�� domk�w". Posortuj rosn�co:
SELECT COUNT(*) AS "Ilosc domkow" ,cena_noc 
FROM domki
GROUP BY cena_noc
HAVING cena_noc >= 200
ORDER BY cena_noc ASC;


--Sprawd� kt�re z cen domk�w powtarzaja si�. Nazwij kolumn� wynikowa "Powtarzane ceny";
SELECT cena_noc AS "Powtarzane ceny"
FROM domki
GROUP BY cena_noc
HAVING COUNT(*) > 1;


-- Do kazdej ilosci osob oblicz najni�sza cen� za noc. Posortuj rosnaco. Zmie� kolumn� wynikowa na "Najni�sza cena":
SELECT  ilosc_osob, MIN (cena_noc) AS "Najni�sza cena" 
FROM domki
GROUP BY ilosc_osob
ORDER BY ilosc_osob;



--Wybierz tylko te domki, kt�rych srednia cena za dobe wynoci 220zl:
SELECT id_domku
FROM domki
GROUP BY id_domku
HAVING AVG(cena_noc) > =220;