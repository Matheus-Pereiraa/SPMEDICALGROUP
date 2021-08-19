create database SPMEDICALGROUP

use SPMEDICALGROUP

--TIPO USUARIO
create table TipoUsuario(
idTipoUsuario tinyint primary key identity,
nomeTipoUsuario varchar(15) Unique NOT NULL
);

--Tipo Consulta
create table TipoConsulta(
idTipoConsulta tinyint primary key identity,
TipoDaConsulta varchar(20) Unique NOT NULL
);

--Lugar
create table Lugar (
idLugar tinyint primary key identity,
CNPJ varchar(14) UNIQUE NOT NULL,
nomeFantasia varchar(50) UNIQUE NOT NULL,
endereco varchar(50) UNIQUE NOT NULL,
razaoSocial varchar(100),
HorarioFuncionamento varchar(10)
);

--Situação
create table Situacao(
idSituacao tinyint primary key identity,
Descricao varchar(20)
);

--Usuario Paciente
create table UsuarioPaciente(
idUsuarioPaciente tinyint primary key identity,
idTipoUsuario tinyint foreign key references TipoUsuario(idTipoUsuario),
nomeUsuarioPaciente varchar(25) NOT NULL,
email varchar(70) UNIQUE NOT NULL,
RG varchar (12) UNIQUE NOT NULL,
CPF varchar (11) UNIQUE NOT NULL,
endereço varchar (50) NOT NULL,
DataNascimento varchar (11) NOT NULL,
Telefone varchar(11) UNIQUE
);
alter table UsuarioPaciente
ADD senha varchar(20) NOT NULL

--Usuario Medico
create table UsuarioMedico(
idUsuarioMedico tinyint primary key identity,
idTipoUsuario tinyint foreign key references TipoUsuario(idTipoUsuario),
CRM varchar (10) UNIQUE NOT NULL,
email varchar (70) UNIQUE not null,
senha varchar (20) NOT NULL,
Especialidade varchar(20) NOT NULL,
Clinica varchar (60) NOT NULL,
CNPJ varchar(14) NOT NULL UNIQUE,
RazaoSocial varchar(100) 
);

--Presença
create table Presença(
idPresença tinyint Primary key identity,
idUsuarioPaciente tinyint foreign key references UsuarioPaciente(idUsuarioPaciente),
idUsuarioMedico tinyint foreign key references UsuarioMedico(idUsuarioMedico),
idSituacao tinyint foreign key references Situacao(idSituacao)
);

--Consultas
Create table Consultas(
idConsulta tinyint primary key identity,
idLugar tinyint foreign key references Lugar(idLugar),
idTipoConsulta tinyint foreign key references TipoConsulta(idTipoConsulta),
Descricao varchar (200),
DataConsulta varchar (11)
);
