select IdEditora, NomeLivro, DataPub from tbl_livros where IdEditora <= 3;
select IdAutor, NomeAutor from tbl_Autores where SobrenomeAutor = 'Stanek';
select IdAssunto from tbl_assuntos where Assunto = 'Literatura';


show index from tbl_editoras;
explain select * from tbl_editoras where NomeEditora = 'Springer';
create index idx_editora on tbl_editoras(NomeEditora);
drop index idx_editora on tbl_editoras;