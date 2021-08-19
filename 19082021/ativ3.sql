create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(id bigint auto_increment not null, Tarja varchar(255), cosmetico varchar(3), primary key(id) );

create table tb_produto(id bigint auto_increment not null, nome varchar(255), preco decimal(6,2), Descon_Fabrica decimal(6,2), codigo varchar(255),categoria_id bigint, primary key(id), foreign key(categoria_id) references tb_categoria(id));

insert into tb_categoria (tarja, cosmetico) values("amarela","Sim" );
insert into tb_categoria (tarja, cosmetico) values("vermelha (sem retenção da receita)","Sim" );
insert into tb_categoria (tarja, cosmetico) values("vermelha (com retenção da receita)","Nao" );
insert into tb_categoria (tarja, cosmetico) values("amarela","Nao" );
insert into tb_categoria (tarja, cosmetico) values("preta","Nao" );

insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Apracu", 10.00, 2.00, "32132130011", 1);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Ritalina", 110.00, 22.00, "01232130011", 5);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("CureGripe", 50.00, 7.00, "4442130011", 2);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Anti-inframatório", 30.00, 4.00, "9992130011", 3);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Anti-biótico", 60.00, 12.00, "22232130011", 3);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Apragaliti", 12.00, 2.00, "32132130011", 4);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Bolanger", 160.00, 12.00, "12321300541", 5);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Mel-Do-Tiete", 5.00, 2.00, "100000130011", 1);

select * from tb_produto where preco > 50;
select * from tb_produto where preco >= 3 and preco <= 60;
select * from tb_produto where nome like 'b%';
select * from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id where cosmetico like '%sim%';

