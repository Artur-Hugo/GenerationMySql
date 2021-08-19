create database gameonline;

use gameonline;

create table tb_classe (
id bigint auto_increment not null,
elemento varchar(255) not null,
Profissao varchar(255) not null,
primary key(id));

create table tb_personagem(
id bigint auto_increment not null,
nome varchar(255) not null,
ataque int(8) not null,
defesa int(8) not null,
vida int(8) not null,
id_personagem bigint not null,
primary key(id),
foreign key (id_personagem)
references tb_classe(id)
);

insert into tb_classe (profissao, elemento) values(
"Arqueiro", "Ar"
);

insert into tb_classe (profissao, elemento) values(
"Arqueiro", "Fogo"
);

insert into tb_classe (profissao, elemento) values(
"Guerreiro", "Fogo"
);

insert into tb_classe (profissao, elemento) values(
"Feiticeiro", "Fogo"
);

insert into tb_classe (elemento, profissao) values(
"Suporte", "Agua"
);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem ) values(
"Ark Mactich", 2500, 600, 2300,1
);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values(
"Takaro Navajina", 3500, 700, 7300,2
);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values(
"Michele Obama", 2500, 1220, 1300,3
);
insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values(
"Cigoto", 500, 700, 1300,5
);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values(
"Mini Silver", 900, 900, 300,2
);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values(
"Porco", 500, 700, 1300,1
);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values(
"Porco Selvagem", 700, 750, 2300,3
);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values(
"Borboleta", 100, 150, 600,4
);

select nome, ataque, defesa, vida from tb_personagem where ataque >= 2000;
select nome, ataque, defesa, vida from tb_personagem where defesa between 1000 and 2000;
select nome, ataque, defesa, vida from tb_personagem where nome like "%c";

select nome, ataque, defesa, vida, elemento, Profissao from tb_personagem inner join
tb_classe on tb_classe.id = tb_personagem.id_personagem;

select nome, ataque, defesa, vida, elemento, Profissao from tb_personagem inner join
tb_classe on tb_classe.id = tb_personagem.id_personagem where profissao like '%arqueiro%';
