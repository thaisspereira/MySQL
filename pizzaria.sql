create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categoria(
id_categoria int auto_increment primary key,
tipo varchar(30) not null,
preco float(2) not null
);

select * from tb_categoria;
insert into tb_categoria (tipo,preco) values ("mini",20.00);
insert into tb_categoria (tipo,preco) values ("pequena" , 30.00);
insert into tb_categoria (tipo,preco) values ("média", 35.00);
insert into tb_categoria (tipo,preco) values ("Grande", 45.00);
insert into tb_categoria (tipo,preco) values ("Doces", 38.00);
 
 select *from tb_categoria;
 create table tb_pizza(
 id_pizza int auto_increment primary key,
 sabor varchar (30) not null,
 borda boolean not null,
 complementos varchar(30)not null,
 massa varchar (30) not null,
 fk_categoria int not null,
 foreign key  (fk_categoria) references tb_categoria (id_categoria)
 );
 
 select * from tb_pizza;
 insert into tb_pizza (sabor,borda,complementos,massa,fk_categoria)
 values 
 ('PORTUGUESA', false, 'QUEIJO E MUSSARELA', 'QUEIMADA',5),
 ('FRANCGO C/ CATUPIRY', true, 'ORÉGANO','CHAMUSCADA', 4),
 ('MUSSARELA', false, 'SALSINHA', 'QUEIMADA',2),
 ('ATUM',true,'CEBOLA', 'CHAMUSCADA',1 ),
 ('CALABRESA',false,'AZEITONA','QUEIMADA',3),
 ('4 QUEIJOS', true, 'ALHO E AZEITE', 'CHAMUSCADA',3),
('BRIGADEIRO', false, 'GRANULADO','QUEIMADA', 1),
 ('MARGUERITA', true,  'TOMATES SECOS', 'QUEIMADA',5);
 
 select * from tb_pizza;
select * from tb_categoria where preco >45;
select * from tb_categoria where preco between 29.00 and 60.00;
select * from tb_pizza where sabor like '%C%';

select tb_categoria.id_categoria, tb_categoria.tipo, tb_categoria.preco, tb_pizza.sabor, tb_pizza.complementos, tb_pizza.massa
from tb_categoria
inner join tb_pizza ON tb_pizza.fk_categoria = tb_categoria.id_categoria;

select tb_pizza.sabor, tb_categoria.tipo 
from tb_categoria 
inner join tb_pizza on tb_pizza.fk_categoria = tb_categoria.id_categoria
where id_categoria = 2;

 
 
 
 




