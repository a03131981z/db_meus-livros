# Group by
select IdAssunto, sum(NumeroPaginas) from tbl_livros group by IdAssunto;
select IdEditora, sum(PrecoLivro) from tbl_livros group by IdEditora;
select IdEditora, avg(NumeroPaginas), IdAssunto from tbl_livros group by IdEditora;
select IdEditora, sum(PrecoLivro) from tbl_livros where NumeroPaginas >= 1000 group by IdEditora order by NumeroPaginas;
select IdEditora, sum(NumeroPaginas) as SomaPaginas from tbl_livros where IdAssunto > 3 group by IdEditora with rollup;