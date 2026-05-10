CREATE DATABASE IF NOT EXISTS boleteriaconciertos;
USE boleteriaconciertos;


CREATE TABLE tipo_boleto (
id VARCHAR (25) PRIMARY KEY,
nombre VARCHAR (25) NOT NULL,
precio DECIMAL (10,2) NOT NULL
);

CREATE TABLE factura (
id VARCHAR (25) PRIMARY KEY,
fecha DATE,
iva DECIMAL (10,2)
);

CREATE TABLE concierto (
id VARCHAR (25) PRIMARY KEY,
nombre VARCHAR (25) NOT NULL,
lugar VARCHAR (50) NOT NULL, 
fecha DATE,
hora TIME
);

CREATE TABLE artista (
id VARCHAR (25) PRIMARY KEY,
nombre_artistico VARCHAR (25) NOT NULL,
genero VARCHAR (25) NOT NULL
);

CREATE TABLE presenta (
id INT PRIMARY KEY AUTO_INCREMENT,
id_artista VARCHAR (25),
id_concierto VARCHAR (25),
orden INT,
tipo_presentacion VARCHAR (25) NOT NULL,
tiempo_escenario TIME,
FOREIGN KEY (id_artista) REFERENCES artista (id),
FOREIGN KEY (id_concierto) REFERENCES concierto (id)
);

CREATE TABLE boleto (
numero INT PRIMARY KEY,
entrada VARCHAR (25) NOT NULL,
asiento VARCHAR (25) NOT NULL,
fila VARCHAR (25) NOT NULL,
sector VARCHAR (25) NOT NULL,
id_concierto VARCHAR (25) REFERENCES concierto (id),
Id_tipo_boleto VARCHAR (25) REFERENCES tipo_boleto (id)
);

CREATE TABLE persona (
cedula VARCHAR (10) PRIMARY KEY,
nombre VARCHAR (25) NOT NULL,
id_boleto INT,
FOREIGN KEY (id_boleto) REFERENCES boleto(numero)
);

CREATE TABLE item_factura (
id VARCHAR (25) PRIMARY KEY,
cantidad INT,
factura VARCHAR (25),
FOREIGN KEY (factura) REFERENCES factura (id),
boleto INT,
FOREIGN KEY (boleto) REFERENCES boleto (numero)
);




