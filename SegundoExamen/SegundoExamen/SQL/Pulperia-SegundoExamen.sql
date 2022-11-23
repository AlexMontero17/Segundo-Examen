--Crear base de datos--

Create Database Pulperia

Use Pulperia

Create Table Cajeros
(
	Codigo_Cajero int identity,
	Nombre nvarchar(255) NOT NULL,
	Apellidos nvarchar(255) NOT NULL,
	CONSTRAINT PK_Cod Primary Key(Codigo_Cajero) -- Llave primaria--
)


Create Table Productos
(
	Codigo_Productos int identity,
	Nombre nvarchar(100) NOT NULL,
	Precio float Default 0,
	CONSTRAINT PK_Prod Primary Key(Codigo_Productos) -- Llave primaria--
)


Create Table MaquinaRegistradora
(
	Codigo_Maquina int identity,
	Precio int,
	CONSTRAINT PK_Maq Primary Key(Codigo_Maquina) -- Llave primaria--
)


Create Table Venta
(
	CodCajero int,
	CodProductos int,
	CodMaquina int,
	Codigo_Venta int identity,
	Fecha datetime Default GetDate() NOT NULL,
	CONSTRAINT PK_Ven Primary Key(Codigo_Venta), -- Llave primaria--
	CONSTRAINT FK_CodigoCajero Foreign Key(CodCajero) References Cajeros(Codigo_Cajero), -- Llave foranea--
	CONSTRAINT FK_CodigoProductos Foreign Key(CodProductos) References Productos(Codigo_Productos), -- Llave foranea--
	CONSTRAINT FK_CodigoMaquina Foreign Key(CodMaquina) References MaquinaRegistradora(Codigo_Maquina) -- Llave foranea--
)

Insert into Cajeros values ('Alex','Montero'),('Ale','Vega')
select * from Cajeros

Insert into Productos values ('Mantequilla',100.5),('Jabon',200),('Gaseosa',300.5)
select * from Productos

Insert into MaquinaRegistradora values (1),(2)
select * from MaquinaRegistradora

Alter Table Productos
Drop Column PrecioSocios
select * from Productos

UPDATE Productos 
    SET Nombre = 'Salchicha' 
    WHERE [Precio] = 100.5
UPDATE Productos 
    SET Precio = 500
    WHERE [Nombre] = 'Jabon'

select * from Productos



select v.CodCajero, v.Codigo_Venta, v.CodMaquina, v.CodProductos
from Venta v 
inner join Productos on v.CodProductos = Productos.Codigo_Productos
inner join Cajeros on v.CodCajero = Cajeros.Codigo_Cajero
inner join MaquinaRegistradora on v.CodMaquina = MaquinaRegistradora.Codigo_Maquina





