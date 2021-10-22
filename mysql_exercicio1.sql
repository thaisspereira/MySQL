create database db_RH;
use db_RH;
create table tb_funcionares(
id_usuario bigint auto_increment,
nome varchar (255) not null,
cargo varchar (255) not null, 
email varchar(255) not null,
salario decimal (10,2)not null,
primary key (id_usuario)
);
select * from  db_RH.tb_funcionares;
insert into tb_funcionares(nome,cargo,email,salario)
values ("Maria","aprendiz","email@email.com",1080.00);

insert into tb_funcionares(nome,cargo,email,salario)
values ("Talita","professora","email@email.com",3500.00);

insert into tb_funcionares(nome,cargo,email,salario)
values ("Thais","diretora","email@email.com",5900.00);

insert into tb_funcionares(nome,cargo,email,salario)
values ("Wanda","inspetora","email@email.com",1709.00);

insert into tb_funcionares(nome,cargo,email,salario)
values ("Samantha","Dona","email@email.com",10093.00);

select * from tb_funcionares where salario <2000.00;
select * from tb_funcionares where salario >2000.00;
update tb_funcionares set cargo = "Coordenadora", salario = 4200.00 where (id_usuario = 2);

 