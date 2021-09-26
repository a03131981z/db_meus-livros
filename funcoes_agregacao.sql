select NomeLivro as Livro from tbl_livros where IdLivro > 102;
select NomeAutor as Nome, SobrenomeAutor Sobrenome from tbl_autores as A;
select NomeLivro Livro, PrecoLivro as P from tbl_livros order by P desc;

select count(*) as Total from tbl_autores;
select count(distinct IdEditora) from tbl_livros;
select max(PrecoLivro) as 'Mais caro' from tbl_livros;
select min(PrecoLivro) from tbl_livros;
select avg(PrecoLivro) as Média from tbl_livros;
select sum(PrecoLivro) as 'Preço Total' from tbl_livros;
select sum(PrecoLivro) / count(*) as 'Preço Médio' from tbl_livros;
select count(*) as 'Quant livros', sum(NumeroPaginas) as 'Páginas Totais', avg(NumeroPaginas) 'Média de págs.' from tbl_livros;