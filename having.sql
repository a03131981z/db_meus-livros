#Having
select IdEditora, sum(PrecoLivro) as Soma from tbl_livros group by IdEditora having Soma > 200;
select IdEditora, avg(NumeroPaginas), IdAssunto from tbl_livros group by IdEditora having avg(NumeroPaginas) >= 1000;
select IdEditora, sum(NumeroPaginas) as SomaPaginas from tbl_livros where IdAssunto > 3 group by IdEditora having SomaPAginas >= 900 order by IdEditora;