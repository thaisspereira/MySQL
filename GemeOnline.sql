create database db_generation_game_thais;
use db_generation_game_thais;
create table tb_classe(
id_classe int not null auto_increment,
nome varchar(30),
ataque int not null,
defesa int not null,
primary key (id_classe)
); 

insert into tb_classe (nome,ataque,defesa) values ("Sambista",4000,1200);
insert into tb_classe (nome,ataque,defesa) values ("MPB",1000,3000);
insert into tb_classe (nome,ataque,defesa) values ("Roqueiro",2000,4000);
insert into tb_classe (nome,ataque,defesa) values ("Rapper",1500,900);
insert into tb_classe (nome,ataque,defesa) values ("Pop",5000,2800);

create table tb_personagem (
id_char int auto_increment,
nome varchar(30),
instrumento varchar(30),
banda varchar (30),
solo boolean,
fk_classe int not null,
primary key (id_char),
foreign key (fk_classe) references tb_classe(id_classe)
);

insert into tb_personagem (nome,instrumento,banda,solo,fk_classe) values ("Pericles","Banjo","Exeltasambra",true,1);
insert into tb_personagem (nome,instrumento,banda,solo,fk_classe) values ("Lucas Silveira","Guitarra","Fresno",false,3);
insert into tb_personagem (nome,instrumento,banda,solo,fk_classe) values ("Mano Brown", "Voz", "Racionais MC´s", true,4 );
insert into tb_personagem (nome,instrumento,banda,solo,fk_classe) values ("Chloe Baley","Voz","Chloe & Halle", true,5 );
insert into tb_personagem (nome,instrumento,banda,solo,fk_classe) values ("Jorge Aragão", "cavaco","Fundo de Quintal", true,1 );
insert into tb_personagem (nome,instrumento,banda,solo,fk_classe) values ("Marisa Monte", "Violão","Tribalistas", true,2);
insert into tb_personagem (nome,instrumento,banda,solo,fk_classe) values ("Dinho Ouro Petro","Voz", "Capital Inicial", false,3);
insert into tb_personagem (nome,instrumento,banda,solo,fk_classe) values ("Gloria Groove","Voz","Balão Mágico", true,5);

select tb_personagem.nome as "Personalidade", tb_classe.ataque as "Ataque"
from tb_personagem join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.ataque >2000;

select tb_personagem.nome as "Personalidade", tb_classe.defesa as "Defesa"
from tb_personagem join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.defesa between 1000 and 2000;

select nome from tb_personagem where nome like "%c%";

select tb_personagem.nome as "Personalidade", tb_classe.nome as "Classe"
from tb_personagem join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.id_classe = 1; 
