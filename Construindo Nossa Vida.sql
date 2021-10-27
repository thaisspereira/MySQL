create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id_categoria bigint auto_increment,
classe varchar(35) not null,
registro timestamp,
primary key (id_categoria)
);

create table tb_produto (
id_produto bigint auto_increment,
nome varchar(35) not null,
tipo varchar(30) not null,
promoçao enum ('sim','não'),
preco decimal (5,2),

fk_categoria bigint,
primary key (id_produto),
foreign key (fk_categoria) references tb_categoria(id_categoria)
);

select * from tb_categoria;
insert into tb_categoria (classe,registro) values
("Revestimento", current_timestamp()),
("Drywall", current_timestamp()),
("Madeira", current_timestamp()),
("Pisos", current_timestamp());

select * from tb_produto;

insert into tb_produto (nome,tipo,promoçao,preco, fk_categoria) values
("hd fosoco","interno", 'sim', 36.99, 1),
("relevo brilhante","interno", 'não', 59.00,1),
("acetinado gold", "interno", 'sim', 28.00,1),
("cantoneira em aço", "interno", 'sim', 13.99,2),
("sarrafo", "interno", 'não', 48.00, 3),
("revestimento esmaltado blue", "externo", 'não', 57.00,4),
("revestimento ceramico", "externo", 'não', 68.00,4),
("revestimento emborrachado", "externo", 'sim', 28.00, 4);


select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where tipo like "%in%";

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria
	order by fk_categoria;
    
select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.fk_categoria
	where tb_categoria.classe like "%rev%";

