insert into tbl_autores (NomeAutor, SobrenomeAutor)
values('Daniel', 'Barret'), ('Gerald', 'Carter'), ('Mark', 'Sobell'),
('William', 'Stanek'), ('Richard', 'Blum'), ('Christine', 'Bresnahan'),
('Richard', 'Silverman'), ('Robert', 'Byrnes'), ('Jay', 'Ts'),
('Robert', 'Eckstein'), ('Paul', 'Horowitz'), ('Winfield', 'Hill'),
('Joel', 'Murach'), ('Paul', 'Scherz'), ('Simon', 'Monk');

# Tabela de editoras
insert into tbl_editoras (NomeEditora)
values('Prentice Hall'), ('o Reilly'),
('Microsoft Press'), ('Wiley'),
('Mc Graw Hill'), ('Bookman'),
('Novatec'), ('Apress'),
('Sybex'), ('Mike Murach and Associates');

# Tabela de assuntos
insert into tbl_assuntos (Assunto)
values
('Ficção'), ('Botânica'),
('Eletrônica'), ('Matemática'),
('Aventura'), ('Literatura'),
('Informática'), ('Suspense');

#tabela de livros
insert into tbl_livros(NomeLivro, ISBN13, DataPub, PrecoLivro, NumeroPaginas, IdAssunto, IdEditora)
values
('Harry Potter e a pedra filosofal', '93847594', '20000619', 50.0, 287, 5, 3),
('Harry Potter e a câmara secreta', '75949384', '20010619', 50.0, 327, 7, 2),
('Harry Potter e o prisioneiro de Azkaban', '94976545554', '20040619', 50.0, 456, 7, 2),
('Harry Potter e o cálice de fogo', '87536679877', '20050619', 50.0, 657, 7, 6),
('Harry Potter e a ordem da fênix', '76899923699', '20070619', 50.0, 561, 7, 3),
('Harry Potter e o príncipe mestiço', '0985689978', '20090619', 50.0, 345, 7, 10),
('Harry Potter e as relíquias da morte ', '876999447784', '20110619', 50.0, 789, 3, 5);

# Tabela associativa livrosAutores
insert into tbl_LivrosAutores(IdLivro, IdAutor)
values
(100,5), (100,6),
(101,1), (101,7), (101,8),
(102,2), (102,9), (102,10),
(103,11), (103,12),
(104,4),
(105,13),
(106,14), (106,15);

#Verificar registros inseridos
select * from tbl_Autores;
select * from tbl_editoras;
select * from tbl_assuntos;
select * from tbl_livros;
select * from tbl_livrosautores;

#Verificar relacionamentos
select L.NomeLivro as Livro,
concat(A.NomeAutor, ' ', A.SobrenomeAutor) as Autor,
L.PrecoLivro as 'Preço do livro'
from tbl_livrosautores LA
inner join tbl_livros L 
on L.IdLivro = LA.IdLivro
inner join tbl_Autores A 
on A.IdAutor = LA.IdAutor;