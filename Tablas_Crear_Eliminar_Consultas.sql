/*CREAR BASE DE DATOS*/
Create DataBase Tablas
/*USAR BASE DE DATOS*/
Use Tablas
/*CREAR TABLA DE BASE DE DATOS*/
create table usuarios(
	nombre varchar(30),
	clave varchar(10)
);
/*ELIMINAR TABLA DE BASE DE DATOS*/
drop table usuarios;

/*INSERTAR DATOS A LA TABLA USUARIOS*/
/*1.SELECIONAR VALORES DE ENTRADA*/
Insert into usuarios (nombre, clave)
values('Roberto','1234')
/*2.METODO GENERAL*/
Insert into usuarios values('Jairo','5678')

/*CONSULTAS*/
/*1.SELECIONAR VALORES DE ENTRADA*/
Select nombre from usuarios
/*2.METODO GENERAL*/
Select * from usuarios

/*Metodo Where*/
Select * from usuarios where nombre='Jairo'
