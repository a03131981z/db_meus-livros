# Consultas simples
select * from tbl_autores;
select NomeAutor from tbl_autores;
select NomeLivro from tbl_livros;
select Assunto from tbl_assuntos;

# Consultas com múltipla colunas
select NomeLivro, PrecoLivro from tbl_livros;
select NomeAutor, SobrenomeAutor from tbl_autores;
select NomeLivro, ISBN13, DataPub from tbl_livros;