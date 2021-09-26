#Inner join
select * from tbl_livros inner join tbl_editoras on tbl_livros.IdEditora = tbl_editoras.IdEditora;
select tbl_livros.NomeLivro, tbl_livros.ISBN13, tbl_assuntos.Assunto from tbl_livros join tbl_assuntos on tbl_livros.IdAssunto = tbl_assuntos.IdAssunto;
select L.NomeLivro as Livros, E.NomeEditora as Editoras from tbl_livros as L join tbl_editoras as E on L.IdEditora = E.IdEditora where E.NomeEditora like 'M%';
select L.NomeLivro Livro, C.Assunto Assunto, E.NomeEditora Editora from tbl_livros L join tbl_assuntos C on L.IdAssunto = C.IdAssunto join tbl_editoras E on L.IdEditora = E.IdEditora;
select L.NomeLivro Livro, concat(A.NomeAutor, ' ', A.SobrenomeAutor) Auto, L.PrecoLivro 'Preço do livro' from tbl_livrosautores LA join tbl_livros L on L.IdLivro = LA.IdLivro join tbl_autores A on A.IdAutor = LA.IdAutor;