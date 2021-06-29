INSERT INTO Klienci(Id_klienta,imie,nazwisko,numer_dokumentu)
VALUES(1,'Adam','Malysz','BKW346987');
INSERT INTO Klienci(Id_klienta,imie,nazwisko,numer_dokumentu)
VALUES(2,'Wojciech','Gola','KRT340981');
INSERT INTO Klienci(Id_klienta,imie,nazwisko,numer_dokumentu)
VALUES(3,'Konrad','Mozdzon','WRX440997');
INSERT INTO Klienci(Id_klienta,imie,nazwisko,numer_dokumentu)
VALUES(4,'Katarzyna','Kaminska','LLO102408');
INSERT INTO Klienci(Id_klienta,imie,nazwisko,numer_dokumentu)
VALUES(5,'Kamil','Kowalski','DDL775432');
INSERT INTO Klienci(Id_klienta,imie,nazwisko,numer_dokumentu)
VALUES(6,'Piotr','Krawczyk','MKI509963');
INSERT INTO Klienci(Id_klienta,imie,nazwisko,numer_dokumentu)
VALUES(7,'Karolina','Garkowska','MEW320087');
INSERT INTO Klienci(Id_klienta,imie,nazwisko,numer_dokumentu)
VALUES(8,'Elzbieta','Kwiatkowska','MIU440888');
INSERT INTO Klienci(id_klienta, imie, nazwisko,numer_dokumentu)
VALUES(9,'Kornel','Karaœ','BWM111943');



INSERT INTO Rezerwacje(id_rezerwacji,data_od,data_do,Domki_id_domku,Klienci_id_klienta)
values (1, '21/06/08', '21/06/10', 4,1);
INSERT INTO Rezerwacje(id_rezerwacji,data_od,data_do,Domki_id_domku,Klienci_id_klienta)
values (2, '2021-07-12', '2021-07-19', 1,2);
INSERT INTO Rezerwacje(id_rezerwacji,data_od,data_do,Domki_id_domku,Klienci_id_klienta)
values (3, '2021-06-12', '2021-07-21', 9,3);
INSERT INTO Rezerwacje(id_rezerwacji,data_od,data_do,Domki_id_domku,Klienci_id_klienta)
values (4, '2021-06-01', '2021-06-13', 2,4);
INSERT INTO Rezerwacje(id_rezerwacji,data_od,data_do,Domki_id_domku,Klienci_id_klienta)
values (5, '2021-08-08', '2021-08-15', 9,7);
INSERT INTO Rezerwacje(id_rezerwacji,data_od,data_do,Domki_id_domku,Klienci_id_klienta)
values (6, '2021-09-09', '2021-09-12', 3,6);
INSERT INTO Rezerwacje(id_rezerwacji,data_od,data_do,Domki_id_domku,Klienci_id_klienta)
values (7, '2021-08-29', '2021-09-02', 6,5);
INSERT INTO Rezerwacje(id_rezerwacji,data_od,data_do,Domki_id_domku,Klienci_id_klienta)
values (8, '2021-06-11', '2021-06-18', 5,8);


INSERT INTO Wszyscy_mieszkancy(id_mieszkanca,imie,nazwisko,numer_dokumentu,Rezerwacje_id_rezerwacji)
values (1,'Adam','Malysz','BKW346987',1);
INSERT INTO Wszyscy_mieszkancy(id_mieszkanca,imie,nazwisko,numer_dokumentu,Rezerwacje_id_rezerwacji)
values (2,'Wojciech','Gola','KRT340981',2);
INSERT INTO Wszyscy_mieszkancy(id_mieszkanca,imie,nazwisko,numer_dokumentu,Rezerwacje_id_rezerwacji)
values (3,'Katarzyna','Kaminska','LLO102408',4);
INSERT INTO Wszyscy_mieszkancy(id_mieszkanca,imie,nazwisko,numer_dokumentu,Rezerwacje_id_rezerwacji)
values (4,'Elzbieta','Kwiatkowska','MIU440888',8);



INSERT INTO Kategorie(id_kategorii_pokoju,Kategoria_pokoju)
VALUES(1,'Pokoj z tarazem i kominkiem');
INSERT INTO Kategorie(id_kategorii_pokoju,Kategoria_pokoju)
VALUES(2,'Pokoj z tarazem bez kominka');
INSERT INTO Kategorie(id_kategorii_pokoju,Kategoria_pokoju)
VALUES(3,'Pokoj luksusowy');
INSERT INTO Kategorie(id_kategorii_pokoju,Kategoria_pokoju)
VALUES(4,'Pokoj bez tarasu i kominka');


INSERT INTO Domki(id_domku,cena_noc,ilosc_osob,Kategorie_id_kategorii_pokoju)
values (1, 200,5,5);
INSERT INTO Domki(id_domku,cena_noc,ilosc_osob,Kategorie_id_kategorii_pokoju)
values (2, 200,4,4);
INSERT INTO Domki(id_domku,cena_noc,ilosc_osob,Kategorie_id_kategorii_pokoju)
values (3, 180,3,3);
INSERT INTO Domki(id_domku,cena_noc,ilosc_osob,Kategorie_id_kategorii_pokoju)
values (4, 400,6,6);
INSERT INTO Domki(id_domku,cena_noc,ilosc_osob,Kategorie_id_kategorii_pokoju)
values (5, 450,8,8);
INSERT INTO Domki(id_domku,cena_noc,ilosc_osob,Kategorie_id_kategorii_pokoju)
values (6, 120,2,2);
INSERT INTO Domki(id_domku,cena_noc,ilosc_osob,Kategorie_id_kategorii_pokoju)
values (7, 120,2,2);
INSERT INTO Domki(id_domku,cena_noc,ilosc_osob,Kategorie_id_kategorii_pokoju)
values (8, 150,3,3);
INSERT INTO Domki(id_domku,cena_noc,ilosc_osob,Kategorie_id_kategorii_pokoju)
values (9, 100,1,1);


INSERT INTO Parking(id_miejsca,numer_prakingu,Domki_id_domku)
VALUES(1,1,1);
INSERT INTO Parking(id_miejsca,numer_prakingu,Domki_id_domku)
VALUES(2,2,2);
INSERT INTO Parking(id_miejsca,numer_prakingu,Domki_id_domku)
VALUES(3,3,3);
INSERT INTO Parking(id_miejsca,numer_prakingu,Domki_id_domku)
VALUES(4,4,4);
INSERT INTO Parking(id_miejsca,numer_prakingu,Domki_id_domku)
VALUES(5,5,5);
INSERT INTO Parking(id_miejsca,numer_prakingu,Domki_id_domku)
VALUES(6,6,6);
INSERT INTO Parking(id_miejsca,numer_prakingu,Domki_id_domku)
VALUES(7,7,7);
INSERT INTO Parking(id_miejsca,numer_prakingu,Domki_id_domku)
VALUES(8,8,8);
INSERT INTO Parking(id_miejsca,numer_prakingu,Domki_id_domku)
VALUES(9,9,9);




