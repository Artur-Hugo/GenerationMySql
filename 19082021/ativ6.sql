create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

create table tb_categoria(id bigint auto_increment not null, setor varchar(255), parceiria_educacional varchar(3),primary key(id));

insert into tb_categoria(setor, parceiria_educacional)values("Informatica", "SIM");
insert into tb_categoria(setor, parceiria_educacional)values("Medicina", "SIM");
insert into tb_categoria(setor, parceiria_educacional)values("Tecnologico", "SIM");
insert into tb_categoria(setor, parceiria_educacional)values("Gastronomico", "Nao");
insert into tb_categoria(setor, parceiria_educacional)values("Artesanal", "Nao");

create table tb_produtos(id bigint auto_increment not null,  nome varchar(255), preco decimal(6,2), duracao varchar(255), desconto varchar(50),id_categoria bigint ,primary key(id),foreign key(id_categoria) references tb_categoria(id)  );



insert into tb_produtos ( nome, preco, duracao, desconto, id_categoria) values("Artur Holnado", 1110.00, "12 meses", "30%",1);
insert into tb_produtos ( nome, preco, duracao, desconto, id_categoria) values("Ronaldo jinty", 1112.00, "12 meses","20%", 2);
insert into tb_produtos ( nome, preco, duracao, desconto, id_categoria) values("Kuna kara", 1170.30, "15%", "6 meses",4);
insert into tb_produtos ( nome, preco, duracao, desconto, id_categoria) values("Kara Noku", 1127.00, "12 meses","22%",2);
insert into tb_produtos ( nome, preco, duracao, desconto, id_categoria) values("Jinto Nakachi", 1117.00, "12 meses","32%", 2);
insert into tb_produtos ( nome, preco, duracao, desconto, id_categoria) values("Xilling Beto chaves", 1112.00, "6 meses","45%",4);
insert into tb_produtos ( nome, preco, duracao, desconto, id_categoria) values("Jedro henrique cardoso", 1199.50, "12 meses","10%", 2);
insert into tb_produtos ( nome, preco, duracao, desconto, id_categoria) values("Vidraça Serio da Silva", 1171.50, "24 meses","10%",5);
insert into tb_produtos ( nome, preco, duracao, desconto, id_categoria) values("Parafuso doze oitenta", 1111.50, "10 meses" ,"10%", 1);


select nome, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , duracao, desconto from tb_produtos where preco > 50;
select nome, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , duracao, desconto from tb_produtos where preco > 3 and preco < 60 ;
select nome, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , duracao, desconto from tb_produtos where nome like 'J%';

select nome, preco, duracao, desconto, parceiria_educacional from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria; 

select nome, preco, duracao, desconto, parceiria_educacional from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.id_categoria where setor like '%informatica%';


