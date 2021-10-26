create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
descricao varchar(255) not null,
vulnerabilidade varchar(255) not null,
resiliencia varchar (255) not null,
ativo boolean not null,
primary key (id)
);
insert into tb_classe (descricao, vulnerabilidade, resiliencia, ativo) values ("Mago" , "Cristais" , "Magia" ,true);
insert into tb_classe (descricao, vulnerabilidade, resiliencia, ativo) values ("Cavaleiro","Magia","Corpo a Corpo",true);
insert into tb_classe (descricao, vulnerabilidade, resiliencia, ativo) values ("Arqueiro","Corpo a Corpo","Flechas",true);
insert into tb_classe (descricao, vulnerabilidade,resiliencia, ativo) values ("Curandeiro","Combate","Poções",true);
insert into tb_classe (descricao, vulnerabilidade,resiliencia, ativo) values ("Deus","Nenhuma","Tudo",true);


select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
arma varchar (255),
especial varchar (255),
atk decimal (10,2),
def decimal (10,2),
categoria_id bigint,
primary key (id), 
foreign key (categoria_id) references tb_classe (id)
);

insert into tb_personagem (nome,arma,especial,atk,def,categoria_id) values ("Duncan","Adaga","Explosão de Energia",5000,999,1);
insert into tb_personagem (nome,arma,especial,atk,def,categoria_id) values ("Clancy","Espada","Ataque Brutal",8000,4000,2);
insert into tb_personagem (nome,arma,especial,atk,def,categoria_id) values ("Ronan","Arco","Visão de longo alcance",6000,3000,3);
insert into tb_personagem (nome,arma,especial,atk,def,categoria_id) values ("Geralt","Adaga e Espada","Regeneração",10000,5000,1);
insert into tb_personagem (nome,arma,especial,atk,def,categoria_id) values ("Taser Face","Clava","Ira",500,250,4);
insert into tb_personagem (nome,arma,especial,atk,def,categoria_id) values ("Willy","Lança","Super Força",9000,1999,2);
insert into tb_personagem (nome,arma,especial,atk,def,categoria_id) values ("Jonhson","Arco Grande","Projéteis energizados",7000,999,3);
insert into tb_personagem (nome,arma,especial,atk,def,categoria_id) values ("House","Bisturí","Minimalista",100,50,4);
insert into tb_personagem (nome,arma,especial,atk,def,categoria_id) values ("Cronos","Foice","Manipula o tempo",100000,100,5);

select * from tb_personagem;

select * from tb_personagem where atk > 2000;
select * from tb_personagem where def between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select nome, arma, especial,tb_classe.vulnerabilidade, tb_classe.resiliencia, tb_classe.descricao as descricao_do_personagem, tb_classe.ativo as estado_do_personagem
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id;

show tables;

select * from tb_personagem where categoria_id =3;

select * from tb_classe;
select * from tb_personagem;