create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
material varchar (255) not null,
uso varchar (255) not null,
primary key (id)
);

insert into tb_categoria (descricao,material,uso) values ("Construção","Bruto","Externo");
insert into tb_categoria (descricao,material,uso) values ("Acabamento","Médio","Interno");
insert into tb_categoria (descricao,material,uso) values ("Utensílios de Casa","Leve","Interno");
insert into tb_categoria (descricao,material,uso) values ("Ferramentas","Manual","Pessoal");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal (10,2) not null,
qtproduto int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Areia",130,1,1);
insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Pedra",70,1,1);
insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Cimento",25,1,1);
insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Azulejo",20,1,2);
insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Porta",300,1,2);
insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Gabinete",250,1,2);
insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Cortina c/ Varão",50,1,3);
insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Pá",100,1,4);
insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Desempenadeira",20,1,4);
insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Colher",30,1,4);
insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Argamassa",30,1,2);
insert into tb_produto(nome,preco,qtproduto,categoria_id) values ("Cano 3/4",2,1,2);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id; 

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.id = 1;