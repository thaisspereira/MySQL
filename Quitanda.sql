create database db_cidade_das_frutas;
use db_cidade_das_frutas;


create table tb_categoria(
	id_categoria int not null auto_increment,
    categoria varchar(45) not null,
	prateleira int not null,
    importado enum('Sim', 'Não'),
	primary key (id_categoria)
);

select * from tb_categoria;

insert into tb_categoria(categoria, prateleira, importado) value ("legumes", 5, 'Sim');
insert into tb_categoria(categoria, prateleira,importado ) value ("fruta", 4, 'Não');
insert into tb_categoria(categoria, prateleira,importado) value ("fruta", 3, 'Sim');
insert into tb_categoria(categoria, prateleira, importado) value ("hortaliça", 2, 'Não');
insert into tb_categoria(categoria, prateleira, importado) value ("legumes", 1, 'Não');

create table tb_produto(
	id_produto int not null auto_increment,
    nome varchar(45) not null,
    reposição int, 
    estoque enum('baixo', 'medio', 'alto'),
    preço dec (8,2) not null,
    primary key (id_produto),
    fk_categoria int not null,
	foreign key (fk_categoria) references tb_categoria(id_categoria)
);

insert into tb_produto(nome, reposição, estoque, preço, fk_categoria) values 
("banana", 10, 'medio', 4.90,4),
("Couveiflor", 20, 'baixo', 5.99, 2),
("cenoura", 30, 'alto', 2.99,3 ),
("beterraba",40,'medio',5.99,5),
("abobrinha", 20,'baixo',3.99,1),
("pepino", 15, 'alto', 2.99, 1),
("kiwi", 30, 'baixo', 4.99, 4),
("abacaxi", 20, 'medio', 4.99, 3);

