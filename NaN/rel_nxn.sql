CREATE DATABASE Relacion_NaN
GO
USE Relacion_NaN
GO

CREATE TABLE Clientes(
	DNI SMALLINT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(30) NOT NULL,
	Apellido VARCHAR(30) NOT NULL,
	Email VARCHAR(50) UNIQUE NOT NULL 
)
GO

CREATE TABLE Producto(
	ID SMALLINT PRIMARY KEY NOT NULL IDENTITY(1,1),
	Descripcion VARCHAR(50) NOT NULL,
	Precio MONEY NOT NULL CHECK (Precio > 0),
	Stock SMALLINT NOT NULL CHECK (Stock > 0)
)
GO

CREATE TABLE Venta(
	ID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	ClienteID SMALLINT NOT NULL,
	ProductoID SMALLINT NOT NULL,
	Fecha DATE NOT NULL
)
GO

ALTER TABLE Venta
ADD CONSTRAINT FK_ClienteID FOREIGN KEY (ClienteID) REFERENCES Clientes (DNI)
GO

ALTER TABLE Venta
ADD CONSTRAINT FK_ProductoID FOREIGN KEY (ProductoID) REFERENCES Producto (ID)
