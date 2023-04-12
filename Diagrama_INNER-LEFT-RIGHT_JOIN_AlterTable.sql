Create Database Colegio

Use Colegio

Create Table Estudiante(
	Num_Estudiante int primary key not null,
	Nombre varchar(30) not null,
	Apellido varchar(30) not null,
	Edad int not null,
	Id_Bachillerato int not null,
	Id_Materia varchar(30) not null
) 

Create Table Bachillerato(
	Id_Bachillerato int primary key not null,
	Bachillerato varchar(30) not null
)

Create Table Materia(
	Id_Materia varchar(30) primary key not null,
	Nombre varchar(30) not null,
	HP varchar(10) not null,
	HT varchar(10) not null,
	Id_Bachillerato int not null
)

INSERT INTO Bachillerato VALUES (1,'Ciencias y Tecnologia')
INSERT INTO Bachillerato VALUES (2,'Humanidades')
INSERT INTO Bachillerato VALUES (3,'Artes')
INSERT INTO Bachillerato VALUES (4,'General')
INSERT INTO Bachillerato VALUES (5,'Ciencias Sociales')

INSERT INTO Materia VALUES ('CITEC-0001', 'Informatica', '2 horas', '2 horas', 1)
INSERT INTO Materia VALUES ('CITEC-0002', 'Matematicas', '3 horas', '3 horas', 1)
INSERT INTO Materia VALUES ('CITEC-0003', 'Estadistica', '2 horas', '3 horas', 1)
INSERT INTO Materia VALUES ('CITEC-0004', 'Geometria', '2 horas', '3 horas', 1)
INSERT INTO Materia VALUES ('CITEC-0005', 'Programacion', '3 horas', '3 horas', 1)
INSERT INTO Materia VALUES ('HUMAN-0001', 'Historia', '2 horas', '3 horas', 2)
INSERT INTO Materia VALUES ('HUMAN-0002', 'Comunicacion', '2 horas', '2 horas', 2)
INSERT INTO Materia VALUES ('HUMAN-0003', 'Geografia', '2 horas', '3 horas', 2)
INSERT INTO Materia VALUES ('ARTES-0001', 'Dibujo', '2 horas', '2 horas', 3)
INSERT INTO Materia VALUES ('ARTES-0002', 'Musica', '2 horas', '2 horas', 3)
INSERT INTO Materia VALUES ('GENER-0001', 'Religion', '2 horas', '3 horas', 4)
INSERT INTO Materia VALUES ('GENER-0002', 'Ingles', '2 horas', '2 horas', 4)
INSERT INTO Materia VALUES ('CIESO-0001', 'Cultura', '2 horas', '3 horas', 5)
INSERT INTO Materia VALUES ('CIESO-0002', 'Biologia', '2 horas', '2 horas', 5)
INSERT INTO Materia VALUES ('CIESO-0003', 'Quimica', '2 horas', '3 horas', 5)

INSERT INTO Estudiante VALUES (1,'Roberto', 'Flores', 23, 1, 'CITEC-0005')
INSERT INTO Estudiante VALUES (2,'Jairo', 'Mendoza', 26, 2, 'HUMAN-0001')
INSERT INTO Estudiante VALUES (3,'Luis', 'Alvarez', 24, 3, 'ARTES-0002')
INSERT INTO Estudiante VALUES (4,'Carlos', 'Lopez', 23, 4, 'GENER-0002')
INSERT INTO Estudiante VALUES (5,'Jesica', 'Muñoz', 25, 5, 'CIESO-0002')
INSERT INTO Estudiante VALUES (6,'Mauricio', 'Arce', 25, 3, 'ARTES-0001')
INSERT INTO Estudiante VALUES (7,'Ariana', 'Flores', 22, 1, 'CITEC-0002')
INSERT INTO Estudiante VALUES (8,'Victor', 'Pachas', 24, 5, 'CIESO-0003')
INSERT INTO Estudiante VALUES (9,'Bryan', 'Palomino', 26, 2, 'HUMAN-0003')

Select * from Materia
Select * from Estudiante

/*INNER JOIN*/
select * from Estudiante e inner join Materia m on 
e.Id_Materia = m.Id_Materia inner join Bachillerato b on
e.Id_Bachillerato = b.Id_Bachillerato where Edad = 23

select e.Nombre,e.Apellido,e.Edad,m.Nombre,b.Bachillerato 
from Estudiante e inner join Materia m on 
e.Id_Materia = m.Id_Materia inner join Bachillerato b on
e.Id_Bachillerato = b.Id_Bachillerato where Edad = 23

/*LEFT JOIN*/
select * from Bachillerato b left join Materia m on 
b.Id_Bachillerato = m.Id_Bachillerato

/*RIGHT JOIN*/
select * from Bachillerato b left join Materia m on 
b.Id_Bachillerato = m.Id_Bachillerato

/*Alter Table*/
Select * from Estudiante
/*Agregar campos*/
alter table Estudiante
add Fecha_Nac Date
/*Eliminar campos*/
alter table Estudiante
drop column Fecha_Nac