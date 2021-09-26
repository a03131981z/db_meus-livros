#Left join 
select * from tbl_assuntos left join tbl_livros on tbl_livros.IdAssunto = tbl_assuntos.IdAssunto;

#Excluindo correspondência
select * from tbl_assuntos left join tbl_livros on tbl_livros.IdAssunto = tbl_assuntos.IdAssunto where tbl_livros.IdAssunto is null;
select * from tbl_livros right join tbl_editoras on tbl_livros.IdEditora = tbl_editoras.IdEditora where tbl_livros.IdEditora is null;

#Right join
select * from tbl_livros as Li right join tbl_editoras as Ed on Li.IdEditora = Ed.IdEditora;

#Cross join
select * from tbl_livros cross join tbl_livrosautores;