--logar mysql -u digi -p;
--senha proacad@00
--create database nome;	--cria um db
--show databases;	--mostra todos os bd

CREATE TABLE evento(
	Id_Evento integer NOT NULL,
	Nome Varchar(255) CHARACTER SET utf8 NOT NULL,
	PRIMARY KEY (Id_Evento)
);

CREATE TABLE stand(
	Id_Stand INTEGER NOT NULL,
	Nome VARCHAR(255) CHARACTER SET utf8 NOT NULL,
	Id_Evento INTEGER NOT NULL,
	PRIMARY KEY (Id_Stand)
);

CREATE TABLE participante(
	Id_Participante INTEGER NOT NULL,
	Cpf VARCHAR(14) NOT NULL, --000.000.000-00
	Nome VARCHAR(255) CHARACTER SET utf8 NOT NULL
	PRIMARY KEY (Id_Participante)
);

CREATE TABLE participacoes(
	Id_Stand INTEGER NOT NULL,
	Id_Participante INTEGER NOT NULL
);

CREATE TABLE gestor(
	Id_Gestor INTEGER NOT NULL,
	Cpf VARCHAR(14) NOT NULL,
	Nome VARCHAR(255) CHARACTER SET utf8 NOT NULL,
	senha VARCHAR(20) NOT NULL,
	PRIMARY KEY (Id_Gestor)
);

CREATE TABLE gerenciamento(
	Id_Gestor INTEGER NOT NULL,
	Id_Stand INTEGER NOT NULL
);

INSERT INTO evento(Id_Evento, Nome)
VALUES (1, "JOÃO FRANSISCO");