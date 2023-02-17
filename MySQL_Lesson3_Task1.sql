DROP DATABASE WeaponaryDB;
CREATE DATABASE WeaponaryDB;
USE WeaponaryDB;

CREATE TABLE Platoon
(
Id int auto_increment PRIMARY KEY,
Number int not null
);

CREATE TABLE Officer
(
Id int auto_increment primary key,
Name varchar(50),
position varchar(50)
);

CREATE TABLE Weapon
(
Id int auto_increment primary key,
Name varchar(30)
);

CREATE TABLE Soldier
(
SoldierId int auto_increment NOT NULL,
Name varchar(50) NOT NULL,
Office varchar(5),
PlatoonId int,
OfficerId int,
WeaponId int,
PRIMARY KEY(SoldierId),
Foreign key(PlatoonId) references Platoon(Id),
foreign key(OfficerId) references Officer(Id),
foreign key(WeaponId) references Weapon(Id)
);

INSERT INTO Platoon
(Number)
VALUES
('222'),
('222'),
('232'),
('232'),
('212'),
('212'),
('200');

INSERT INTO Officer
(Name, position)
VALUES
('Буров О.С.', 'майор'),
('Рыбаков Н.Г.', 'майор'),
('Деребанов В.Я.', 'подполковник'),
('Рыбаков Н.Г.', 'майор'),
('Буров О.С.', 'майор'),
('Рыбаков Н.Г.', 'майор'),
('Буров О.С.', 'майор');

INSERT INTO Weapon
(Name)
VALUES
('АК-47'),
('Глок20'),
('АК-74'),
('Глок20'),
('АК-47'),
('Глок20'),
('АК-47');

INSERT INTO Soldier
(Name, Office, PlatoonId, OfficerId, WeaponId)
VALUES
('Петров В.А.', '205', 1, 1, 1),
('Петров В.А.', '205', 1, 2, 2),
('Лодарев П.С.', '221', 2, 3, 3),
('Лодарев П.С.', '221', 2, 2, 2),
('Леонтьев К.В.', '201', 3, 1, 1),
('Леонтьев К.В.', '201', 3, 2, 2),
('Духов Р.М.', NULL, 4, 1, 1);

SELECT * FROM Platoon;
SELECT * FROM Officer;
SELECT * FROM Weapon;
SELECT * FROM Soldier;
