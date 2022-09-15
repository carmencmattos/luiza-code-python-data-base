
create table aluno(
	matricula varchar(10),
	nome char(100),
	constraint aluno_pkey primary key (matricula)
);

create table disciplina(
	codigo_disc int not null,
	descricao varchar(100) not null,
	constraint disciplina_pkey primary key(codigo_disc)
);

create table disciplina_aluno(
	id serial not null,
	disciplina_codigo_disc int,
	aluno_matricula varchar(10),
	constraint fk_aluno foreign key(aluno_matricula) references aluno(matricula),
	constraint fk_disciplina foreign key(disciplina_codigo_disc) references disciplina(codigo_disc)
);

INSERT INTO public.aluno
(matricula, nome)
VALUES('123456', 'Maria');

INSERT INTO public.disciplina
(codigo_disc, descricao)
VALUES(7891011, 'matematica');

INSERT INTO public.disciplina_aluno
(disciplina_codigo_disc, aluno_matricula)
VALUES(7891011, '123456');

select * from aluno a;

select * from disciplina d;

select * from disciplina_aluno da;

select a.nome, d.descricao  from disciplina_aluno da 
join aluno a on a.matricula = da.aluno_matricula
join disciplina d on d.codigo_disc = da.disciplina_codigo_disc;

