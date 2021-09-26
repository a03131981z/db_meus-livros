#Criar tabela de autores
create table tbl_Autores(
IdAutor smallint auto_increment,
NomeAutor varchar(50) not null,
SobrenomeAutor varchar(60) not null,
constraint pk_id_autor primary key (IdAutor)
);

describe tbl_Autores;

#Criar tabela de editoras
create table tbl_Editoras(
IdEditora smallint primary key auto_increment,
NomeEditora varchar(50) not null
);

#Criar tabela de assuntos
create table tbl_Assuntos(
IdAssunto tinyint auto_increment,
Assunto varchar(25) not null,
constraint pk_id_assunto primary key (IdAssunto)
);

# Criar tabela de livros
create table if not exists tbl_Livros(
IdLivro smallint not null auto_increment,
NomeLivro varchar(70) not null,
ISBN13 varchar(13) not null,
DataPub date,
PrecoLivro decimal(10, 2) not null,
NumeroPaginas smallint not null,
IdEditora smallint not null,
IdAssunto tinyint not null,
constraint pk_id_livro primary key(IdLivro),
constraint fk_id_editora foreign key (IdEditora) references tbl_Editoras (IdEditora) on delete cascade,
constraint fk_id_assunto foreign key (IdAssunto) references tbl_Assuntos (IdAssunto) on delete cascade
);

# Criar tabela livrosAutores
create table tbl_LivrosAutores(
IdLivro smallint not null,
IdAutor smallint not null,
constraint pk_id_livro_autor primary key (IdLivro, IdAutor),
constraint fk_id_livros foreign key (IdLivro) references tbl_Livros (IdLivro),
constraint fk_id_autores foreign key (IdAutor) references tbl_Autores (IdAutor)
);

show tables;

create table Emprestimo(
IdEmprestimo tinyint primary key,
NomeLivro varchar(60) not null,
NomeEmprestador varchar (50) not null,
DataEmprestimo date not null,
Duracao tinyint not null
);

rename table Emprestimo to tbl_Emprestimos;

alter table tbl_livros
add Edicao tinyint;

describe tbl_livros;

alter table tbl_emprestimos
modify column IdEmprestimo smallint;

alter table tbl_livros auto_increment=100;
describe tbl_livros;

show tables;

drop table tbl_emprestimos;
