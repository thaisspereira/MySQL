create database dt_ecommerce;
use dt_ecommerce;


create table produtos(
id_produto bigint auto_increment,
produto varchar (255)not null,
quantidade int (255) not null,
característica varchar (255) not null,
setor varchar(255) not null,
preço decimal (5, 3) not null,
primary key (id_produto)
);


insert into produtos(produto, quantidade, característica, setor, preço) values ("Vestido", 99, "malha", "Feminino", 89.00);
insert into produtos(produto, quantidade, característica, setor, preço) values ("Saia", 80, "jeans", "Feminino", 56.98);
insert into produtos(produto, quantidade, característica, setor, preço) values ("Sandalia", 79, "salto grosso", "Feminino", 89.90);
insert into produtos(produto, quantidade, característica, setor, preço) values ("Regata", 85, "malha", "Feminino", 29.90);
insert into produtos(produto, quantidade, característica, setor, preço) values ("Body", 50, "couro", "Feminino", 49.99);
insert into produtos(produto, quantidade, característica, setor, preço) values ("Tenis", 80, "casual", "Masculino", 69.90);
insert into produtos(produto, quantidade, característica, setor, preço) values ("Cardigan", 40, "trico", "Feminino", 59.99);
insert into produtos(produto, quantidade, característica, setor, preço) values ("Salopete", 40, "jeans", "Feminino", 99.99);

select * from produtos where preço > 500;
select * from produtos where preço < 500;
update produtos set preço = 49.99 where id_produto = 4;
/*
Exercicio 2

Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500*/
