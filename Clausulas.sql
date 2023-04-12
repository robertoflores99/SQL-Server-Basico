Use Tablas
/*CLAUSULAS*/
/*Having*/
select * from Empleado
select DEPARTAMENTO, avg(SALARIO) as Porciento from Empleado
group by DEPARTAMENTO having AVG(SALARIO)<1200

select SEXO, count(SEXO) as Cantidad from Empleado
group by SEXO having count(SEXO)>2
/*Distinct*/
select DEPARTAMENTO from Empleado
select distinct DEPARTAMENTO, count(DEPARTAMENTO) as Cantidad from Empleado
group by DEPARTAMENTO
/*Top*/
select * from Empleado
select top 2 * from Empleado order by ID_Empleado asc
select top 3 * from Empleado order by ID_Empleado desc