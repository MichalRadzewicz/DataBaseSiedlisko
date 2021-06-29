--Wypisz iloœæ domków, które moga pomiescic dana ilosc osob. Zastosuj nazwê kolumny 'iloœæ domków':

SELECT  ilosc_osob, COUNT(*) AS "Iloœæ domków"
FROM Domki
GROUP BY ilosc_osob;



-- Wypisz iloœæ domków za cenê wieksza lub rowna 200, nazwij pierwsz¹ kolumnê jako "Iloœæ domków". Posortuj rosn¹co:
SELECT COUNT(*) AS "Ilosc domkow" ,cena_noc 
FROM domki
GROUP BY cena_noc
HAVING cena_noc >= 200
ORDER BY cena_noc ASC;


--SprawdŸ które z cen domków powtarzaja siê. Nazwij kolumnê wynikowa "Powtarzane ceny";
SELECT cena_noc AS "Powtarzane ceny"
FROM domki
GROUP BY cena_noc
HAVING COUNT(*) > 1;


-- Do kazdej ilosci osob oblicz najni¿sza cenê za noc. Posortuj rosnaco. Zmieñ kolumnê wynikowa na "Najni¿sza cena":
SELECT  ilosc_osob, MIN (cena_noc) AS "Najni¿sza cena" 
FROM domki
GROUP BY ilosc_osob
ORDER BY ilosc_osob;



--Wybierz tylko te domki, których srednia cena za dobe wynoci 220zl:
SELECT id_domku
FROM domki
GROUP BY id_domku
HAVING AVG(cena_noc) > =220;