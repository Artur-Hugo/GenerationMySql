create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (id bigint auto_increment not null, Tipo varchar(255), Carne_Cara varchar(3), primary key(id)) ;

create table tb_Pizza(id bigint auto_increment not null, nome varchar(255), preco decimal(6,2),  Acompanhamentocombebida varchar(3), Exclusiva varchar(3), id_categoria bigint, primary key(id),
foreign key(id_categoria) references tb_categoria(id));


insert into tb_categoria (tipo, Carne_Cara) values ("Bovino", "SIM");
insert into tb_categoria (tipo, Carne_Cara) values ("Aves", "NAO");
insert into tb_categoria (tipo, Carne_Cara) values ("Peixe", "SIM");
insert into tb_categoria (tipo, Carne_Cara) values ("Vegetariana", "NAO");
insert into tb_categoria (tipo, Carne_Cara) values ("Doce", "NAO");
insert into tb_categoria (tipo, Carne_Cara) values ("Outros", "NAO");


select * from tb_categoria;

insert into tb_Pizza (nome, preco, Acompanhamentocombebida, Exclusiva,id_categoria) values ("Calabreza", 39.00 ,"SIM","NAO",6 );
insert into tb_Pizza (nome, preco, Acompanhamentocombebida, Exclusiva,id_categoria) values ("Mussalera", 39.00 ,"SIM","NAO", 6);
insert into tb_Pizza (nome, preco, Acompanhamentocombebida, Exclusiva,id_categoria) values ("Brócolis leitor", 21.00 ,"SIM","SIm", 4);
insert into tb_Pizza (nome, preco, Acompanhamentocombebida, Exclusiva,id_categoria) values ("Romeo e Julieta", 24.00 ,"SIM","NAO", 5);
insert into tb_Pizza (nome, preco, Acompanhamentocombebida, Exclusiva,id_categoria) values ("Salmao e Queijo", 44.00 ,"SIM","SIM", 3);
insert into tb_Pizza (nome, preco, Acompanhamentocombebida, Exclusiva,id_categoria) values ("Baião de 2", 39.00 ,"SIM","NAO", 1);
insert into tb_Pizza (nome, preco, Acompanhamentocombebida, Exclusiva,id_categoria) values ("Mussalera Premium", 62.00 ,"SIM","SIm", 6);
insert into tb_Pizza (nome, preco, Acompanhamentocombebida, Exclusiva,id_categoria) values ("Frango Catupiry", 39.00 ,"SIM","NAO", 2);

select * from tb_Pizza;

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco >= 29 and preco <= 60;
select * from tb_pizza where nome like 'c%';

select * from tb_pizza inner join tb_categoria on  tb_categoria.id = tb_pizza.id_categoria;

select * from tb_pizza inner join tb_categoria on  tb_categoria.id = tb_pizza.id_categoria where tipo like '%doce%';













