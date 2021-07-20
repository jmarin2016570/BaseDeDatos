drop database if exists dbtonyskinal2016570;
/*Programador
		Jose David Marin Mijangos
		2016570
    Creacion 
		21/02/2020
        Creacion de base de datos
Modificaciones*/



Create Database dbtonyskinal2016570;
use dbtonyskinal2016570;

create table Productos(
	codigoProducto int auto_increment not null,
    nombreProducto varchar(150) not null,
    cantidad int not null,
    primary key PK_codigoProducto(codigoProducto)	
);

create table TipoEmpleado(
	codigoTipoEmpleado int auto_increment not null,
    descripcion varchar(100),
    primary key PK_codigoTipoEmpleado(codigoTipoEmpleado)
);

create table Empleados(
	codigoEmpleado int auto_increment not null,
    numeroEmpleado int not null,
    apellidosEmpleado varchar(150) not null,
    nombresEmpleado varchar(150) not null,
    direccionEmpleado varchar(150) not null,
    telefonoContacto varchar(10) not null,
    gradoCocinero varchar(50) not null,
    codigoTipoEmpleado int not null,
    primary key PK_codigoEmpleado(codigoEmpleado),
    constraint FK_Empleados_TipoEmpleado foreign key (codigoTipoEmpleado) 
    references tipoEmpleado(codigoTipoEmpleado)
);

create table TipoPlato(
	codigoTipoPlato int auto_increment not null,
    descripcionTipo varchar(100) not null,
    primary key PK_codigoTipoPlato(codigoTipoPlato)
);

create table Platos(
	codigoPlato int auto_increment not null,
    cantidad int not null,
    nombrePlato varchar(50),
    descripcionPlato varchar(150) not null,
    precioPlato decimal(10,2),
    codigoTipoPlato int not null,
    primary key PK_codigoPlato(codigoPlato),
    constraint FK_Platos_TipoPlato foreign key (codigoTipoPlato)
    references TipoPlato(codigoTipoPlato)
);

create table Empresas(
	codigoEmpresa int auto_increment not null,
    nombreEmpresa varchar(150) not null,
    direccion varchar(150) not null,
    telefono varchar(10) not null,
    primary key PK_codigoEmpresa(codigoEmpresa)
);

create table Presupuesto(
	codigoPresupuesto int auto_increment not null,
    fechaSolicitud date,
    cantidadPresupuesto decimal(10,2),
    codigoEmpresa int not null,
    primary key PK_codigoPresupuesto(codigoPresupuesto),
    constraint FK_Presupuesto_Empresas foreign key (codigoEmpresa)
    references Empresas(codigoEmpresa)
);

create table Servicios(
	codigoServicio int auto_increment not null,
    fechaServicio date,
    tipoServicio varchar(100),
    horaServicio time,
    lugarServicio varchar(100),
    telefonoContacto varchar(10),
    codigoEmpresa int not null,
    primary key PK_codigoServicio(codigoServicio),
    constraint FK_Servicios_Empresas foreign key (codigoEmpresa)
    references Empresas(codigoEmpresa)
);

CREATE TABLE Servicios_has_Empleados(
	codigoServicioEmpleado INT auto_increment NOT NULL,
	codigoServicio INT NOT NULL,
    codigoEmpleado INT NOT NULL,
	CONSTRAINT FK_Servicios_Servicios_has_Empleados
		FOREIGN KEY (codigoServicio) REFERENCES Servicios(codigoServicio),
	CONSTRAINT FK_Empleados_Servicios_has_Empleados
		FOREIGN KEY (codigoEmpleado) REFERENCES Empleados(codigoEmpleado),
	fechaEvento DATE NOT NULL,
    horaEvento TIME NOT NULL,
    lugarEvento VARCHAR(150) NOT NULL,
    PRIMARY KEY PK_codigoServicioEmpleado(codigoServicioEmpleado)
);

CREATE TABLE Servicios_has_Platos(
	codigoServicio INT NOT NULL,
    codigoPlato INT NOT NULL,
	CONSTRAINT FK_Servicios_Servicios_has_Platos
		FOREIGN KEY (codigoServicio) REFERENCES Servicios(codigoServicio),
	CONSTRAINT FK_Platos_Servicios_has_Platos
		FOREIGN KEY (codigoPlato) REFERENCES Platos(codigoPlato)
);

CREATE TABLE Productos_has_Platos(
	codigoProducto INT NOT NULL,
    codigoPlato INT NOT NULL,
	CONSTRAINT FK_Productos_Productos_has_Platos
		FOREIGN KEY (codigoProducto) REFERENCES Productos(codigoProducto),
	CONSTRAINT FK_Platos_Productos_has_Platos
		FOREIGN KEY (codigoPlato) REFERENCES Platos(codigoPlato)
);
