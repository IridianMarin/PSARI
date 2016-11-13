CREATE DATABASE SARI;
USE SARI;
CREATE TABLE Idioma (
  idIdioma INT IDENTITY(1,1) NOT NULL,
  NombreIdioma VARCHAR(15) NULL,
  PRIMARY KEY(idIdioma)
);

CREATE TABLE Habilidades (
  idHabilidades INT IDENTITY(1,1) NOT NULL ,
  NombreHabilidad VARCHAR(30) NULL,
  PRIMARY KEY(idHabilidades)
);

CREATE TABLE Parametro (
  idParametro INT  IDENTITY(1,1) NOT NULL,
  NombreParametro VARCHAR(30) NULL,
  Porcentaje INT NULL,
  PRIMARY KEY(idParametro)
);

CREATE TABLE Pruebas (
  idPruebas INT IDENTITY(1,1) NOT NULL,
  NombrePrueba VARCHAR(30) NULL,
  PRIMARY KEY(idPruebas)
);
CREATE TABLE Direccion (
  idDireccion INT  IDENTITY(1,1) NOT NULL ,
  CP INT NULL,
  Colonia VARCHAR(30) NULL,
  Municipio VARCHAR(30) NULL,
  Estado VARCHAR(30) NULL,
  Pais VARCHAR(30) NULL,
  Num_int INT NULL,
  Num_ext INT NULL,
  Nombre_calle VARCHAR(30) NULL,
  Tipo_calle VARCHAR(30) NULL,
  PRIMARY KEY(idDireccion)
);

CREATE TABLE Persona (
  idPersona INT  IDENTITY(1,1) NOT NULL,
  idDireccion INT not null,
  Nss VARCHAR(30) NULL,
  Genero VARCHAR(30) NULL,
  Edad INT NULL,
  Fecha_nac DATE NULL,
  Apellido_m VARCHAR(30) NULL,
  Apellido_p VARCHAR(30) NULL,
  Nombre VARCHAR(30) NULL,
  CURP VARCHAR(30) NULL,
  PRIMARY KEY(idPersona),
  FOREIGN KEY(idDireccion)
	REFERENCES Direccion(idDireccion)
	  ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Preferencias_lab (
  idPreferencias_lab INT  IDENTITY(1,1) NOT NULL ,
  idPersona INT NOT NULL,
  Puesto_deseado VARCHAR(30) NULL,
  Area_deseada VARCHAR(30) NULL,
  Salario_minimo INT NULL,
  Disp_viajar VARCHAR(30) NULL,
  Cambio_residencia VARCHAR(30) NULL,
  Turno_deseado VARCHAR(30) NULL,
  PRIMARY KEY(idPreferencias_lab),
    FOREIGN KEY(idPersona)
    REFERENCES Persona(idPersona)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Usuario (
  Username VARCHAR(30) NOT NULL,
  idPersona INT NOT NULL,
  Contraseña VARCHAR(30) NULL,
  Tipo VARCHAR(30) NULL,
  PRIMARY KEY(Username),
  FOREIGN KEY(idPersona)
    REFERENCES Persona(idPersona)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Contacto (
  idContacto INT IDENTITY(1,1)  NOT NULL ,
  idPersona INT NOT NULL,
  Tipo VARCHAR(30) NULL,
  NombreContacto VARCHAR(30) NULL,
  PRIMARY KEY(idContacto),
  FOREIGN KEY(idPersona)
    REFERENCES Persona(idPersona)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Preguntas (
  idPreguntas INT IDENTITY(1,1)  NOT NULL,
  idPruebas INT NOT NULL,
  NombrePregunta VARCHAR(150) NULL,
  PRIMARY KEY(idPreguntas),
  FOREIGN KEY(idPruebas)
    REFERENCES Pruebas(idPruebas)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);



CREATE TABLE Experiencias_laborales (
  idEx INT IDENTITY(1,1) NOT NULL,
  idPersona INT NOT NULL,
  Empresa VARCHAR(30) NULL,
  Area VARCHAR(30) NULL,
  Puesto VARCHAR(30) NULL,
  Fecha_inicio DATE NULL,
  Fecha_fin DATE NULL,
  Sueldo INT NULL,
  Motivo_salida VARCHAR(30) NULL,
  Jefe_inmediato VARCHAR(30) NULL,
  Puesto_jefe VARCHAR(30) NULL,
  PRIMARY KEY(idEx),
  FOREIGN KEY(idPersona)
    REFERENCES Persona(idPersona)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Formación (
  IDF INT IDENTITY(1,1) NOT NULL ,
  idPersona INT NOT NULL,
  Experiencia VARCHAR(30) NULL,
  Fecha_fin DATE NULL,
  Fecha_inicio DATE NULL,
  Estado VARCHAR(30) NULL,
  Nivel_estudios VARCHAR(30) NULL,
  Centro_educativo VARCHAR(30) NULL,
  PRIMARY KEY(IDF),
  FOREIGN KEY(idPersona)
    REFERENCES Persona(idPersona)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Respuesta (
  idRespuesta INT  IDENTITY(1,1) NOT NULL ,
  idPreguntas INT NOT NULL,
  Nrespuesta VARCHAR(30) NULL,
  Valor VARCHAR(30) NULL,
  PRIMARY KEY(idRespuesta),
  FOREIGN KEY(idPreguntas)
    REFERENCES Preguntas(idPreguntas)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Empleado (
  idEmpleado INT IDENTITY(100,1)  NOT NULL ,
  idPersona INT NOT NULL,
  Area VARCHAR(30) NULL,
  Puesto VARCHAR(30) NULL,
  Jornada VARCHAR(30) NULL,
  PRIMARY KEY(idEmpleado),
  FOREIGN KEY(idPersona)
    REFERENCES Persona(idPersona)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Referencias (
  idReferencias INT IDENTITY(1,1)  NOT NULL,
  idContacto INT NOT NULL,
  idPersona INT NOT NULL,
  Nombre VARCHAR(30) NULL,
  Ocupacion INT NULL,
  PRIMARY KEY(idReferencias),
  FOREIGN KEY(idPersona)
    REFERENCES Persona(idPersona)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idContacto)
    REFERENCES Contacto(idContacto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Idioma_has_Persona (
  idIdioma INT NOT NULL,
  idPersona INT NOT NULL,
  PRIMARY KEY(idIdioma, idPersona),
  FOREIGN KEY(idIdioma)
    REFERENCES Idioma(idIdioma)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idPersona)
    REFERENCES Persona(idPersona)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Persona_has_Habilidades (
  idPersona INT NOT NULL,
  idHabilidades INT NOT NULL,
  PRIMARY KEY(idPersona, idHabilidades),
  FOREIGN KEY(idPersona)
    REFERENCES Persona(idPersona)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idHabilidades)
    REFERENCES Habilidades(idHabilidades)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Persona_has_Pruebas (
  idPersona INT NOT NULL,
  idPruebas INT NOT NULL,
  idParametro INT NOT NULL,
  Resultado int NULL,
  PRIMARY KEY(idPersona, idPruebas),
  FOREIGN KEY(idPersona)
    REFERENCES Persona(idPersona)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idPruebas)
    REFERENCES Pruebas(idPruebas)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idParametro)
    REFERENCES Parametro(idParametro)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

-- FINANCIEROS


create table Requisicion(
id_soli_r int not null identity(1,1),
status_solicitud varchar(50) not null,
fecha_solicitud date not null,
monto_solicitud float not null,
id_producto int not null,
cantidad_productos int not null,
descripcion varchar(100)not null,
motivo_roa varchar(200)not null,
primary key(id_soli_r) 
);

create table usuario_solicita
(
id_usol int not null,
id_requisicion int not null,
Username varchar(30) not null,
foreign key(id_requisicion) references Requisicion(id_soli_r),
foreign key(Username) references Usuario(Username),
primary key(id_usol)
)