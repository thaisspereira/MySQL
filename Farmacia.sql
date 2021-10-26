create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id_categoria bigint auto_increment,
medicamento varchar(30) not null,
generico boolean,
primary key (id_categoria)
);

create table tb_produto(
id_produto bigint auto_increment,
nome varchar(30) not null,
estoque int(3),
marca varchar (30) not null,
preço real,
key_categoria bigint,
primary key (id_produto),
foreign key (key_categoria) references tb_categoria(id_categoria)
);
select * from tb_categoria;
insert into tb_categoria (medicamento,generico) values 
("Aleopatico",false),
("Fitoterapico",false),
("Similar",true),
("Manipulado",false),
("Homeopático",false);

select * from tb_produto;
insert into tb_produto (nome,estoque,marca,preço,key_categoria) values 
("dipirona",30,"medley",25.00,2),
("anador",50,"medley",10.00,1),
("ibuprofeno",70,"sanofi",13.00,2),
("neosaldina",40,"bayer",18.00,1),
("salompas",80,"sanofy",21.00,1),
("amoxilina",45,"medley",8.00,2),
("airliv",30,"bayer",55.00,2),
("oxiticxina",70,"sanofi",65.00,1);

select * from tb_produto where preço > 50.00;
select * from tb_produto where preço  between 3 and 60;
select * from tb_produto where nome like "%b%";

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria
order by tb_produto.nome;

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.generico = "Genérico";
    
    select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.key_categoria 
	where tb_categoria.generico = "Original";
    




