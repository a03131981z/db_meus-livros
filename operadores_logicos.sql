select IdLivro, NomeLivro, IdEditora from tbl_livros where IdLivro > 102 or IdEditora < 4;
select IdLivro, NomeLivro, IdEditora from tbl_livros where not IdEditora = 10;