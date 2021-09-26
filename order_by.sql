select * from tbl_livros order by NomeLivro asc;

select NomeLivro, IdEditora from tbl_livros order by IdEditora;

select NomeLivro, PrecoLivro from tbl_livros order by PrecoLivro desc;

select NomeLivro, DataPub, IdAssunto from tbl_livros order by IdAssunto, NomeLivro;