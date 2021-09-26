create table Classe(
IdClasse smallint(4) primary key,
AnoLetivo smallint(4) not null,
Serie smallint (4)not null,
Turma varchar(70) not null,
Periodo  varchar(13) not null
);

create table Alunos(
RGM smallint(8) primary key,
Nome varchar(35) not null,
NomePai varchar(35) not null,
NomeMae varchar(35) not null,
DataNasc date,
Sexo varchar(1) not null
);

create table Matricula(
RGM smallint(8),
IdClasse smallint(4),
foreign key(RGM) references Alunos(RGM),
foreign key (IdClasse) references Classe(IdClasse)
);