create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255),
borda_recheada boolean not null,
primary key (id)
);

insert into tb_categoria (descricao,borda_recheada) values ("Pizza Salgada", true);
insert into tb_categoria (descricao,borda_recheada) values ("Pizza Doce", false);
insert into tb_categoria (descricao,borda_recheada) values ("Pizza Broto", true);
insert into tb_categoria (descricao,borda_recheada) values ("Pizza Salgada", false);
insert into tb_categoria (descricao,borda_recheada) values ("Pizza Doce", true);
insert into tb_categoria (descricao,borda_recheada) values ("Pizza Broto", false);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (3,2) not null,
qnt int not null,
ingr1 varchar(255),
ingr2 varchar(255),
ingr3 varchar (255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);
alter table tb_pizza modify preco decimal (10,2);

insert into tb_pizza (nome, preco, qnt, ingr1, ingr2, ingr3, categoria_id) values ("Portuguesa",35.00,1,"Queijo Mussarela","Ovo","Presunto",1);
insert into tb_pizza (nome, preco, qnt, ingr1, ingr2, ingr3, categoria_id) values ("Mussarela",29,1,"Queijo Mussarela","Tomate","Azeitona",4);
insert into tb_pizza (nome, preco, qnt, ingr1, ingr2, ingr3, categoria_id) values ("Calabresa",28,2,"Calabresa","Cebola","Azeitona",6);
insert into tb_pizza (nome, preco, qnt, ingr1, ingr2, ingr3, categoria_id) values ("Prestígio",50,3,"Chocolate","Coco","Cereja",5);
insert into tb_pizza (nome, preco, qnt, ingr1, ingr2, ingr3, categoria_id) values ("Romeu e Julieta",60,2,"Queijo Mussarela","Goiabada","Canela",2);
insert into tb_pizza (nome, preco, qnt, ingr1, ingr2, ingr3, categoria_id) values ("Baiana",37,1,"Calabresa","Ovo","Pimenta",3);
insert into tb_pizza (nome, preco, qnt, ingr1, ingr2, ingr3, categoria_id) values ("Caipira",63,1,"Frango","Milho","Catupiry",1);
insert into tb_pizza (nome, preco, qnt, ingr1, ingr2, ingr3, categoria_id) values ("Napolitana",33,1,"Queijo Mussarela","Tomate","Queijo Parmesão",1);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%C%";

select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.id = 1;