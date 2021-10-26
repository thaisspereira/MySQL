create database db_cursoBasic;
use db_cursoBasic;

create table tb_categoria(
id bigint auto_increment,
curso enum ("linkedin", "Git", "Mysql"),
tempo varchar(35) not null,

primary key (id)
);


create table tb_curso(
id_curso bigint auto_increment,
alune varchar(35) not null,
turma char,
preco decimal (5,2),
promocao decimal (6,2),

fk_categoria bigint,
primary key (id_curso),
foreign key (fk_categoria) references tb_categoria(id)
);

select * from tb_categoria;

insert into tb_categoria(curso, tempo)
	values	("linkedin", "3 meses"),
			("Git", "5 meses"),
            ("Mysql", "6 meses");
            
select * from tb_curso;

insert into tb_curso(alune, turma, preco, promocao, fk_categoria)
	values	("Guilherme", "A", 59.90, 39.90, 1),
			("Aline", "L", 90.00, 60.00, 3),
            ("Jubileu", "M", 70.00, 50.00, 2),
            ("Sara", "A", 59.90, 39.90, 1),
			("Clotilde", "L", 90.00, 60.00, 3),
            ("Marcio", "M", 70.00, 50.00, 2);
            

select * from tb_curso where alune like "%c%";

select * from tb_categoria inner join tb_curso on tb_categoria.id = tb_curso.fk_categoria
	order by preco desc;
    

    