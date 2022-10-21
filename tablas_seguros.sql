-- La base de datos se llama seguros
CREATE SCHEMA  Seguros;

USE Seguros;

-- Estructura para tabla "CLIENTES"
CREATE TABLE clientes (
    id_clientes int NOT NULL AUTO_INCREMENT,
    nombre varchar(50) NOT NULL,
    apellido varchar(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    documento INT NOT NULL,
    telefono INT NOT NULL,
    id_provincia INT NOT NULL,
    tarjeta_de_credito INT NOT NULL,
    poliza INT NOT NULL,
    CONSTRAINT PK_CLIENTES PRIMARY KEY (id_clientes)
);

-- Estructura para tabla "VEHICULO"
CREATE TABLE vehiculo (
    poliza int NOT NULL ,
    modelo varchar(50) NOT NULL,
    antiguedad INT NOT NULL,
    tipo_combustible varchar(10) NOT NULL,
    patente varchar(10) NOT NULL,
    suma_asegurada INT NOT NULL,
    prima_pura INT NOT NULL,
    premio INT NOT NULL,
    id_plan INT NOT NULL,
	id_productor INT NOT NULL,
    CONSTRAINT PK_VEHICULO PRIMARY KEY (poliza)
);

-- Estructura para tabla "PROVINCIA"
CREATE TABLE provincia (
	id_provincia int NOT NULL AUTO_INCREMENT,
    provincia varchar(50) NOT NULL,
	CONSTRAINT PK_PROVINCIA PRIMARY KEY (id_provincia)
);

-- Estructura para tabla "PLAN"
CREATE TABLE plan (
	id_plan int NOT NULL AUTO_INCREMENT,
    plan varchar(50) NOT NULL,
	CONSTRAINT PK_PLAN PRIMARY KEY (id_plan)
);

-- Estructura para tabla "PRODUCTOR"
CREATE TABLE productor (
    id_productor int NOT NULL AUTO_INCREMENT,
    nombre varchar(50) NOT NULL,
    apellido varchar(50) NOT NULL,
    fecha_alta DATE NOT NULL,
    codigo_postal INT NOT NULL,
    CONSTRAINT PK_PRODUCTOR PRIMARY KEY (id_productor)
);

-- Estructura para tabla "CIUDADES"
CREATE TABLE ciudades (
    codigo_postal int NOT NULL,
    nombre_ciudad varchar(50) NOT NULL,
    CONSTRAINT PK_VEHICULO PRIMARY KEY (codigo_postal)
);

-- Estructura para tabla "SINIESTROS"
CREATE TABLE siniestros (
    id_siniestro int NOT NULL AUTO_INCREMENT,
    poliza INT NOT NULL,
    fecha_de_ocurrencia DATE NOT NULL,
    fecha_de_denuncia DATE NOT NULL,
    descripcion varchar(100) NOT NULL,
    id_taller INT NOT NULL,
    CONSTRAINT PK_SINIESTROS PRIMARY KEY (id_siniestro,poliza)
);

-- Estructura para tabla "ROBO"
CREATE TABLE robo (
    id_robo int NOT NULL AUTO_INCREMENT,
    poliza INT NOT NULL,
    fecha_de_ocurrencia DATE NOT NULL,
    fecha_de_denuncia DATE NOT NULL,
    descripcion varchar(100) NOT NULL,
    id_taller INT NOT NULL,
    CONSTRAINT PK_ROBO PRIMARY KEY (id_robo,poliza)
);

-- Estructura para tabla "DESCUENTOS"
CREATE TABLE descuentos (
    poliza int NOT NULL ,
    fecha_de_descuento DATE NOT NULL,
	porcentaje_descuento INT NOT NULL,
    plazo INT NOT NULL,
    flag INT NOT NULL,
    CONSTRAINT PK_DESCUENTOS PRIMARY KEY (poliza)
);

-- Estructura para tabla "TALLERES"
CREATE TABLE talleres (
    id_taller int NOT NULL AUTO_INCREMENT,
    nombre varchar(50) NOT NULL,
	id_provincia INT NOT NULL,
	codigo_postal INT NOT NULL,
    CONSTRAINT PK_TALLERES PRIMARY KEY (id_taller)
);

