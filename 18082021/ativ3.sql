create database registroescola;

use registroescola;

create table estudantes (
id bigint auto_increment,
nome varchar(255),
sexo varchar(255),
materia varchar(100),
nota decimal(5,2),
primary key(id)
);

insert into estudantes(id,nome,sexo,materia,nota) values(1,"Arcaína Romera da costa", "Feminina","Filosofia", 8.5);

 insert into estudantes(id,nome,sexo,materia,nota) values(2,"Manuel Ovidio da Cruz", "Masculino", "Biologia", 6.6);
 
  insert into estudantes(id,nome,sexo,materia,nota) values(3,"Edignaldo da Silva Barbosa","Masculino", "Historia", 9.0);

 insert into estudantes(id,nome,sexo,materia,nota) values(4,"Jailson Mendes Lula da Silva", "Masculino", "Sociologia", 8.8);
 
 insert into estudantes(id,nome,sexo,materia,nota) values(5,"Galopeira Brita da Silva", "Feminina", "Português", 7.0);

insert into estudantes(id,nome,sexo,materia,nota) values(6,"Isadora Brita Riveira", "Feminina", "Português", 9.0);
insert into estudantes(id,nome,sexo,materia,nota) values(7,"Felipo Assunção Benetto", "Masculino", "Biologia", 8.6);
insert into estudantes(id,nome,sexo,materia,nota) values(8,"Manuel da Paz", "Masculino", "Biologia", 9.6);

select * from estudantes where nota > 7;

select * from estudantes where nota < 7;

 update estudantes set nota = 10.0 where id = 8;
 
 
 select * from estudantes;