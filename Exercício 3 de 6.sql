create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
remedio varchar(255) not null,
indicacao varchar (255) not null,
contra_indica varchar (255) not null,
primary key (id)
);

insert into tb_categoria (remedio, indicacao,contra_indica) values ("Dipirona","Febre, Dor e cólica","Menores de 3 meses, gestantes, deficientes");
insert into tb_categoria (remedio, indicacao,contra_indica) values ("Buscopan","Cólicas em geral","Fraqueza muscular");
insert into tb_categoria (remedio, indicacao,contra_indica) values ("Cimegripe","Gripe e resfriado","Hipertensos, diabéticos, gravidez");
insert into tb_categoria (remedio, indicacao,contra_indica) values ("Xarope","Tosse","Úlcera e gastrite");
insert into tb_categoria (remedio, indicacao,contra_indica) values ("Colírio","Irritação ocular","Alérgicos à carmelose");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
sintoma varchar (255) not null,
preco decimal (10,2) not null,
qtd int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

select * from tb_produto;

insert into tb_produto (nome, sintoma, preco, qtd, dtvalidade, categoria_id) values ("João","Febre",30,1,"2022-12-05",1);
insert into tb_produto (nome, sintoma, preco, qtd, dtvalidade, categoria_id) values ("Félix","Gripe",10,2,"2022-09-15",3);
insert into tb_produto (nome, sintoma, preco, qtd, dtvalidade, categoria_id) values ("Mariana","Tossindo",5,4,"2022-10-09",4);
insert into tb_produto (nome, sintoma, preco, qtd, dtvalidade, categoria_id) values ("Joaquina","Cólica",15,2,"2023-02-05",2);
insert into tb_produto (nome, sintoma, preco, qtd, dtvalidade, categoria_id) values ("Igor","Olho irritado",7,2,"2024-03-07",5);
insert into tb_produto (nome, sintoma, preco, qtd, dtvalidade, categoria_id) values ("Guilherme","Resfriado",20,1,"2022-12-05",3);
insert into tb_produto (nome, sintoma, preco, qtd, dtvalidade, categoria_id) values ("Julio","Dor",60,4,"2023-11-25",1);
insert into tb_produto (nome, sintoma, preco, qtd, dtvalidade, categoria_id) values ("Eduardo","Olho vermelho",55,2,"2022-12-05",5);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_categoria where remedio like "%B%";

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id; 

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.id = 1;


