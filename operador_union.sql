#Exemplo 01
select NomeLivro Livro, PrecoLivro Preço, 'Livro caro' Resultado from tbl_livros where PrecoLivro >= 150.00 union select NomeLivro Livro, PrecoLivro Preço, 'Preço razoável' Resultado from tbl_livros where PrecoLivro < 150.00 order by Preço;

#Exemplo 02
select L.NomeLivro Livro, L.PrecoLivro 'Preço normal', L.PrecoLivro * 0.90 'Preço ajustado', A.assunto from tbl_livros L inner join tbl_assuntos A on L.IdAssunto = A.IdAssunto where L.PrecoLivro > 200.00 union select L.NomeLivro Livro, L.PrecoLivro 'Preço normal', L.PrecoLivro * 1.15 'Preço ajustado', A.Assunto
from tbl_livros L inner join tbl_assuntos A on l.IdAssunto = A.IdAssunto where A.Assunto = 'Eletrônica' order by 'Preço ajustado' desc;

#Exemplo 03
select * from tbl_assuntos left join tbl_livros on tbl_livros.IdAssunto = tbl_assuntos.IdAssunto union select * from tbl_assuntos right join tbl_livros on tbl_livros.IdAssunto = tbl_assuntos.IdAssunto;