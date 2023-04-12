Use Tablas
/*Funciones*/
/*Min*/
select * from productos
select MIN(precion_uni) from productos
/*Max*/
select * from productos
select MAX(precion_uni) from productos
/*AVG*/
select * from productos
select AVG(precion_uni) from productos
/*Concatenacion, alias y count*/
/*Concatenacion*/
select * from productos
select 'el nombre del producto es '+ descripcion from productos
select descripcion +' es un producto' from productos where ID = 1
/*Alias*/
select * from productos
select descripcion as producto from productos
/*Count*/
select * from productos
select count(ID) from productos
select count(descripcion) from productos where precion_uni = 1.20

/*Order by*/
select * from productos order by precion_uni
/*ascendente*/
select * from productos order by precion_uni asc
/*descendente*/
select * from productos order by precion_uni desc

/*Operadores not, and, or*/
/*Not*/
select * from productos where not ID=4
select * from productos
select descripcion from productos where not precion_uni=1.20 order by stock asc
/*And*/
select ID,descripcion,precion_uni from productos where precion_uni>1.20 and stock<48 order by ID asc
/*Or*/
select ID,descripcion,precion_uni from productos where precion_uni>1.20 or stock<48 order by ID asc

/*Between*/
select * from productos
select * from productos where precion_uni between 1.30 and 1.70

/*Like*/
select * from productos
select * from productos where precion_uni like 1.50
/*Empezando*/
select * from productos where descripcion like 'Se%'
/*Terminando*/
select * from productos where descripcion like '%si 500ml'
/*Contenga una letra*/
select * from productos where descripcion like '%Re%'
Create table Empleado(
	ID_Empleado INT IDENTITY NOT NULL,
	NOMBRE VARCHAR(30) NOT NULL,
	APELLIDO VARCHAR(30) NOT NULL,
	SEXO VARCHAR(15) NOT NULL,
	SALARIO MONEY NOT NULL,
	DEPARTAMENTO VARCHAR(50) NOT NULL
)
INSERT INTO Empleado VALUES ('Roberto', 'Flores', 'Masculino', 950.00,'Lima')
INSERT INTO Empleado VALUES ('Luis', 'Alvarez', 'Masculino', 1050.00,'Callao')
INSERT INTO Empleado VALUES ('Jairo', 'Mendoza', 'Masculino', 850.00,'Ica')
INSERT INTO Empleado VALUES ('Norma', 'Vargas', 'Femenino', 1150.00,'Callao')
INSERT INTO Empleado VALUES ('Jessica', 'Rivas', 'Femenino', 1250.00,'Trujillo')
INSERT INTO Empleado VALUES ('Carlos', 'Muñoz', 'Masculino', 750.00,'Lima')

select * from Empleado

/*Group By*/
select APELLIDO from Empleado Group By APELLIDO

select SEXO, sum(SALARIO) as Total_Salario from Empleado 
Group By SEXO

select SEXO, count(SALARIO) as Cant_Empleados from Empleado 
Group By SEXO order by SEXO desc




