create database T_SSolve

use T_SSolve

CREATE TABLE Empresa
(
	IdEmpresa		INT PRIMARY KEY IDENTITY
	,NomeFantasia	VARCHAR(255) NOT NULL
	,CNPJ			VARCHAR(20) NOT NULL UNIQUE
	,RazaoSocial	VARCHAR(255) NOT NULL UNIQUE
	,Endereco		VARCHAR(255) NOT NULL
);

CREATE TABLE Tipo_De_Servi�o
(
	IdTipoServi�o	INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(255) NOT NULL 
);

CREATE TABLE Comodos
(
	IdComodos		INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Funcionario
(
	IdFuncionario	INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(150) NOT NULL 
);

CREATE TABLE Servi�os
(
	IdServi�o		INT PRIMARY KEY IDENTITY
	,IdEmpresa      INT FOREIGN KEY REFERENCES Empresa (IdEmpresa)
	,Pre�o			MONEY 
	,Descricao		VARCHAR(255)
	,Inicio			VARCHAR(255)
	,Final			VARCHAR(255)
	,IdTipoServi�o	INT FOREIGN KEY REFERENCES Tipo_de_Servi�o(IdTipoServi�o)
	,IdComodos		INT FOREIGN KEY REFERENCES Comodos(IdComodos)
);

CREATE TABLE Servi�o_Funcionario
(
	IdServi�o		INT FOREIGN KEY REFERENCES Servi�os(IdServi�o)
	,IdFuncionario	int foreign key references Funcionario(IdFuncionario)
);


