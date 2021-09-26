# Retornar os dois livros mais baratos:
select NomeLivro, PrecoLivro from tbl_livros order by PrecoLivro limit 2;

#Retornar os três livros mais caros da tabela
select NomeLivro, PrecoLivro from tbl_livros order by PrecoLivro desc limit 3;

#Retornar o 3º, 4º e 5º livros com maior número de páginas
select NomeLivro, NumeroPaginas from tbl_livros order by NumeroPaginas desc limit 2, 3;