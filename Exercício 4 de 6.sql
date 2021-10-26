create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
primary key (id)
);

insert into tb_categoria (descricao) values ("Frutas");
insert into tb_categoria (descricao) values ("Verduras");
insert into tb_categoria (descricao) values ("Legumes");

alter table tb_categoria add estado varchar(255);
alter table tb_categoria add sugestao varchar(255);

select * from tb_categoria;

update tb_categoria set sugestao = "Sobremesa" where id =1;


create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (10,2) not null,
qtproduto int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Maçã",1.99,3,1);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Alface",0.99,2,2);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Coentro",1.99,3,2);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Abóbora",10.99,3,3);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Limão Siciliano",60.99,5,1);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Romã",70.99,1,1);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Mexirica",4.99,5,1);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Batata",3.99,3,3);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Couve",4.99,5,2);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Banana",3.99,1,1);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id; 

-- Categoria Fruta
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.id = 1;