create table tbl_emprestimos(
IdEmprestimo tinyint primary key,
NomeLivro varchar(60) not null,
NomeEmprestador varchar(50) not null
);

insert into tbl_emprestimos(IdEmprestimo, NomeLivro, NomeEmprestador)
values
(20, 'O Cortiço', 'João da Silva'),
(21, 'A Moreninha', 'Marcos de Souza'),
(22, 'Macunaíma', 'Ana Abreu');

select * from tbl_emprestimos;

truncate table tbl_emprestimos;
select * from tbl_emprestimos;

drop table tbl_emprestimos;