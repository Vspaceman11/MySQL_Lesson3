DROP DATABASE WeaponaryDB;

CREATE DATABASE WeaponaryDB;
USE WeaponaryDB;
CREATE TABLE Weaponary
(
id int auto_increment NOT NULL,
Name varchar(50),
Platoon int NOT NULL,
Weapon varchar(30) NOT NULL,
WeaponaryGiver varchar(50) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO Weaponary
(Name, Platoon, Weapon, WeaponaryGiver)
VALUES
('Петров В.А., оф.205', 222, 'АК-47', 'Буров О.С. майор'), 
('Петров В.А., оф.205', 222, 'Глок20', 'Рыбаков Н.Г., майор'), 
('Лодарев П.С., оф.221', 232, 'АК-74', 'Деребанов В.Я., подполковник'), 
('Лодарев П.С., оф.221', 232, 'Глок20', 'Рыбаков Н.Г., майор'), 
('Леонтьев К.В., оф.201', 212, 'АК-47', 'Буров О.С., майор'), 
('Леонтьев К.В., оф.201', 212, 'Глок20', 'Рыбаков Н.Г., майор'), 
('Духов Р.М.', 200, 'АК-47', 'Буров О.С., майор');

SELECT * FROM Weaponary;

DROP TABLE Weaponary;

CREATE TABLE Officer
(
OfficerId int auto_increment NOT NULL,
Name varchar(30),
Position varchar(25),
PRIMARY KEY(OfficerId)
);

CREATE TABLE Weapon
(
weaponId int auto_increment NOT NULL,
Name varchar(10) NOT NULL,
OfficerId int NOT NULL,
PRIMARY KEY(weaponId),
FOREIGN KEY(OfficerId) REFERENCES Officer(OfficerId)
);

CREATE TABLE Soldier
(
SoldierId int auto_increment NOT NULL,
Name varchar(50) NOT NULL,
Office varchar(3),
Platoon int NOT NULL,
PRIMARY KEY(SoldierId)
);

CREATE TABLE SoldierWeapon
(
SoldierId int NOT NULL,
WeaponID int NOT NULL,
FOREIGN KEY(SoldierId) REFERENCES Soldier(SoldierId),
FOREIGN KEY(WeaponID) REFERENCES Weapon(WeaponId)
);

INSERT INTO Officer
(Name, Position)
VALUES
('Буров О.С.', 'майор'),
('Рыбаков Н.Г.', 'майор'),
('Деребанов В.Я.', 'подполковник'),
('Рыбаков Н.Г.', 'майор'),
('Буров О.С.', 'майор'),
('Рыбаков Н.Г.', 'майор'),
('Буров О.С.', 'майор');

INSERT INTO Weapon
(Name, OfficerId)
VALUES
('АК-47', 1),
('Глок20', 2),
('АК-74', 3),
('Глок20', 2),
('АК-47', 1),
('Глок20', 2),
('АК-47', 1);


INSERT INTO Soldier
(Name, Office, Platoon)
VALUES
('Петров В.А.', '205', 222),
('Петров В.А.', '205', 222),
('Лодарев П.С.', '221', 232),
('Лодарев П.С.', '221', 232),
('Леонтьев К.В.', '201', 212),
('Леонтьев К.В.', '201', 212),
('Духов Р.М.', NULL, 200);

INSERT INTO SoldierWeapon
(SoldierId, WeaponId)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 2),
(3, 1),
(3, 2),
(4, 1);

SELECT * FROM Officer;
SELECT * FROM Weapon;
SELECT * FROM Soldier;
SELECT * FROM SoldierWeapon;

DROP TABLE Officer;
DROP TABLE Weapon;
DROP TABLE Soldier;
DROP TABLE SoldierWeapon;



