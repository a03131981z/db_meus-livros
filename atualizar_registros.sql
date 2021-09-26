select * from tbl_livros;

update tbl_livros
set NomeLivro = 'SSH, o Shell seguro'
where IdLivro = 101;

update tbl_livros
set PrecoLivro = PrecoLivro+10
where IdLivro = 105;

select * from tbl_assuntos;

update tbl_assuntos
set Assunto = 'Biologia'
where IdAssunto = 2;