create database seucommercefavorito;

use seucommercefavorito;

create table Produtos(id bigint auto_increment,
nome varchar(255),
marca varchar(255),
codigo varchar(255),
preco decimal(8,2),
primary key(id));

insert into Produtos values(1,"Molho de tomate emlatado","Quero" , "21312321312", 4.56);

insert into Produtos values(2,"Biscoito","Trakinas" , "21213211121312", 2.56);

insert into Produtos values(3,"Playstation5","Sony" , "7456546456454", 5000.56);

insert into Produtos values(4,"Notebook","Positivo" , "44512321312", 1450.56);

insert into Produtos values(5,"HeadPhone","Sansung" , "89012321312", 294.99);

insert into Produtos values(6,"Fone de ouvido","JBL" , "213090900021312", 94.99);

insert into Produtos values(7,"Cadeira Gamer","AXT" , "00912321312", 1114.97);

insert into Produtos values(8,"Cobertor","Color star" , "21312321312", 84.99);

select * from Produtos where preco > 500;

select * from Produtos where preco < 500;

update Produtos set preco = 86.99 where id = 8;

select * from Produtos;



