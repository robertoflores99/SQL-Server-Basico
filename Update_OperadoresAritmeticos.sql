/*USAR BASE DE DATOS*/
Use Tablas
/*CREAR TABLA DE BASE DE DATOS*/
create table cliente(
	nombre varchar(30),
	apellido varchar(30),
	edad int,
	telefono varchar(30),
	Fecha_nac date
);
/*INSERTAR DATOS A LA TABLA CLIENTE*/
Insert into cliente values('Roberto','Flores',23,'902-994-042','12/07/1999')
Insert into cliente values('Jairo','Mendoza',20,'972-904-502','08/05/2002')
Insert into cliente values('Luis','Alvarez',18,'970-705-509','06/10/2004')
/*CONSULTAS*/
Select * from cliente

/*Operadores Relacionales*/
Select * from cliente where edad < 23 and edad > 18
/*Delete*/
/*Borrar los datos segun una variable*/
Delete From cliente where apellido = 'Alvarez'
Select * from cliente
/*Borrar todos los datos*/
Delete from cliente
/*Actualizar Informacion*/
update cliente set nombre = 'Carlos' Where edad = 18
update cliente set nombre = 'Stefania', apellido = 'Flores' Where edad = 20
/*IDENTITY*/
Create table productos(
	ID int Identity,
	descripcion varchar(30),
	precion_uni decimal(5,2),
	stock int
)
Drop table productos
Select * From productos
/*Insertar Productos*/
Insert into productos values('Fanta 500ml',1.5,48)
Insert into productos values('Pepsi 500ml',1.8,12)
Insert into productos values('SevenUp 500ml',1.8,36)
Insert into productos values('Kola Real Piña 500ml',1.2,24)
Insert into productos values('Kola Real Fresa 500ml',1.2,60)

/*Operadores Arimeticos*/
select descripcion, precion_uni*stock from productos






