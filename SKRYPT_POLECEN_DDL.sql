SKRYPT SQL:
-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-06-08 10:12:31.851

-- tables
-- Table: Domki
CREATE TABLE Domki (
    id_domku integer  NOT NULL,
    cena_noc integer  NOT NULL,
    ilosc_osob integer  NOT NULL,
    Kategorie_id_kategorii_pokoju integer  NOT NULL,
    CONSTRAINT Domki_pk PRIMARY KEY (id_domku)
) ;

-- Table: Kategorie
CREATE TABLE Kategorie (
    id_kategorii_pokoju integer  NOT NULL,
    kategoria_pokoju varchar2(50)  NOT NULL,
    CONSTRAINT Kategorie_pk PRIMARY KEY (id_kategorii_pokoju)
) ;

-- Table: Klienci
CREATE TABLE Klienci (
    id_klienta integer  NOT NULL,
    imie varchar2(30)  NOT NULL,
    nazwisko varchar2(50)  NOT NULL,
    numer_dokumentu varchar2(9)  NOT NULL,
    CONSTRAINT Klienci_pk PRIMARY KEY (id_klienta)
) ;

-- Table: Parking
CREATE TABLE Parking (
    id_miejsca integer  NOT NULL,
    numer_prakingu integer  NOT NULL,
    Domki_id_domku integer  NOT NULL,
    CONSTRAINT Parking_pk PRIMARY KEY (id_miejsca)
) ;

-- Table: Rezerwacje
CREATE TABLE Rezerwacje (
    id_rezerwacji integer  NOT NULL,
    data_od date  NOT NULL,
    data_do date  NOT NULL,
    Domki_id_domku integer  NOT NULL,
    Klienci_id_klienta integer  NOT NULL,
    CONSTRAINT Rezerwacje_pk PRIMARY KEY (id_rezerwacji)
) ;

-- Table: Wszyscy_mieszkancy
CREATE TABLE Wszyscy_mieszkancy (
    id_mieszkanca integer  NOT NULL,
    imie varchar2(50)  NOT NULL,
    nazwisko varchar2(50)  NOT NULL,
    numer_dokumentu varchar2(9)  NOT NULL,
    Rezerwacje_id_rezerwacji integer  NOT NULL,
    CONSTRAINT Wszyscy_mieszkancy_pk PRIMARY KEY (id_mieszkanca)
) ;

-- foreign keys
-- Reference: Domki_Kategorie (table: Domki)
ALTER TABLE Domki ADD CONSTRAINT Domki_Kategorie
    FOREIGN KEY (Kategorie_id_kategorii_pokoju)
    REFERENCES Kategorie (id_kategorii_pokoju);

-- Reference: Parking_Domki (table: Parking)
ALTER TABLE Parking ADD CONSTRAINT Parking_Domki
    FOREIGN KEY (Domki_id_domku)
    REFERENCES Domki (id_domku);

-- Reference: Rezerwacje_Domki (table: Rezerwacje)
ALTER TABLE Rezerwacje ADD CONSTRAINT Rezerwacje_Domki
    FOREIGN KEY (Domki_id_domku)
    REFERENCES Domki (id_domku);

-- Reference: Rezerwacje_Klienci (table: Rezerwacje)
ALTER TABLE Rezerwacje ADD CONSTRAINT Rezerwacje_Klienci
    FOREIGN KEY (Klienci_id_klienta)
    REFERENCES Klienci (id_klienta);

-- Reference: Wszyscy_mieszkancy_Rezerwacje (table: Wszyscy_mieszkancy)
ALTER TABLE Wszyscy_mieszkancy ADD CONSTRAINT Wszyscy_mieszkancy_Rezerwacje
    FOREIGN KEY (Rezerwacje_id_rezerwacji)
    REFERENCES Rezerwacje (id_rezerwacji);

-- End of file.