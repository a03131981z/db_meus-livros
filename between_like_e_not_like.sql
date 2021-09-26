# Claúsula between
select * from tbl_livros where DataPub between '20040517' and '20110517';
select NomeLivro as Livro, PrecoLivro as Preco from tbl_livros where PrecoLivro between 150.00 and 200.00;
select NomeLivro, PrecoLivro from tbl_livros where PrecoLivro between 170.00 and 180.00 or PrecoLivro between 220.00 and 300.00 order by PrecoLivro;

# Cláusulas like e not like
select * from tbl_livros where NomeLivro like 'A%';
select * from tbl_livros where NomeLivro not like 'S%';
select NomeLivro from tbl_livros where NomeLivro like '_i%';
select NomeLivro as Livro, PrecoLivro as Valor from tbl_livros where NomeLivro not like 'A%' and PrecoLivro <= 190.00;