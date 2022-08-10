CREATE DATABASE Relacion_1a1
GO
USE Relacion_1a1
GO

CREATE TABLE Usuario(
	Nombre_Usuario VARCHAR(30) PRIMARY KEY,
	Contrasenia VARCHAR(24) NOT NULL,
	Email VARCHAR(255) NOT NULL
)
GO

CREATE TABLE Fotos_Usuario(
	Nombre_Usuario VARCHAR(30) NOT NULL FOREIGN KEY REFERENCES Usuario (Nombre_Usuario),
	Foto_Perfil VARCHAR(255) NOT NULL,
	Foto_Portada VARCHAR(255) NOT NULL
)

/*Propuesta: 
	Tabla de usuario que guarde nombre contraseña y email 
	Tabla Fotos Usuario guarde un link con las fotos de perfil y portada de un usuario*/