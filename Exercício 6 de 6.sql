create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255),
duracao varchar (255),
professor varchar (255),
primary key (id)
);

insert into tb_categoria (descricao,duracao,professor) values ("Curso Java","1 Mês","Luis");
insert into tb_categoria (descricao,duracao,professor) values ("Curso Back-end","1 Mês","Rafael");
insert into tb_categoria (descricao,duracao,professor) values ("Curso Front-end","1 Mês","Lucas");
insert into tb_categoria (descricao,duracao,professor) values ("Curso BSM","1 Mês","Tia Jess");

select * from tb_categoria;

update tb_categoria set duracao = "3 Meses" where id =4;

create table tb_produto(
id bigint auto_increment,
nome varchar (255),
preco decimal (10,2),
dtinicio date,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, preco,dtinicio,categoria_id) values ("Michael",61,"2021-01-01",1);
insert into tb_produto(nome, preco,dtinicio,categoria_id) values ("John",0,"2021-03-07",1);
insert into tb_produto(nome, preco,dtinicio,categoria_id) values ("Sheldon",10,"2021-11-11",2);
insert into tb_produto(nome, preco,dtinicio,categoria_id) values ("Leonard",50,"2021-10-21",2);
insert into tb_produto(nome, preco,dtinicio,categoria_id) values ("Cousin Leo",21,"2021-05-10",3);
insert into tb_produto(nome, preco,dtinicio,categoria_id) values ("Travis",41,"2021-06-21",3);
insert into tb_produto(nome, preco,dtinicio,categoria_id) values ("Virgil",200,"2021-04-30",4);
insert into tb_produto(nome, preco,dtinicio,categoria_id) values ("Rocco",100,"2021-02-27",4);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%J%";

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id; 

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.id = 1;
