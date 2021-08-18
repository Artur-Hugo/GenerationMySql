create database ServiçoDeRH;

use ServiçoDeRH;

create table funcionaries (
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
sexo char(25) not null,
salario decimal(8,2)not null,
primary key(id)

);

insert into funcionaries values(1,"Arcaína Romera da costa","Atendente" , "Feminina", 1800.00);

 insert into funcionaries values(2,"Manuel Ovidio da Cruz","Contador" , "Masculino", 2800.00);
 
  insert into funcionaries values(3,"Edignaldo da Silva Barbosa","Contador" , "Masculino", 2800.00);

 insert into funcionaries values(4,"Jailson Mendes Lula da Silva","Encarregado" , "Masculino", 3200.00);
 
 insert into funcionaries values(5,"Galopeira Brita da Silva","Gerente" , "Feminina", 6800.00);


select * from funcionaries where salario > 2000;

select * from funcionaries where salario < 2000;

update funcionaries set  salario = 3220.00 where id = 4;

select * from funcionaries; 

