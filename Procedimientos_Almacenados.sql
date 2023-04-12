/*Procedimientos almacenados*/
create procedure Mostrar_info
as
begin
select * from Estudiante
end

execute Mostrar_info

create procedure Mostrar_info2
@Num_Estudiante int
as
begin
select * from Estudiante where Num_Estudiante = @Num_Estudiante
end
execute Mostrar_info2 5

/*Insertar*/
create procedure Insertar_info
@Id_Materia varchar(30),
@Nombre varchar(30),
@HP varchar(10),
@HT varchar(10),
@Id_Bachillerato int
as
begin
INSERT INTO Materia VALUES (@Id_Materia, @Nombre, @HP, @HT, @Id_Bachillerato)
end
execute Insertar_info 'ARTES-0003', 'Pintura', '2 horas', '2 horas', 3
select * from Materia

/*Actualizar*/
create procedure Actualizar_infor
@Id_Materia varchar(30),
@Nombre varchar(30),
@HP varchar(10),
@HT varchar(10),
@Id_Bachillerato int
as
begin
update Materia set Nombre = @Nombre, HP = @HP, HT = @HT, Id_Bachillerato = @Id_Bachillerato
Where Id_Materia = @Id_Materia
end

execute Actualizar_infor 'ARTES-0003', 'Pintar', '2 horas', '2 horas', 3
select * from Materia

/*Eliminar*/
create procedure Eliminar_info
@Id_Materia varchar(30)
as
begin
Delete from Materia Where Id_Materia = @Id_Materia
end

execute Eliminar_info 'ARTES-0003'