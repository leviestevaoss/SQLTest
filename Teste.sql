create database projetos;
use projetos;

create table users(
id int primary key auto_increment,
nome varchar(40),
username varchar(45) unique,
email varchar(50),
senha varchar(55)
);

drop table projetos;

create table projetos(
id int primary key auto_increment,
nome varchar(50),
descricao varchar(100),
data_inicio date not null,
data_final date not null
);

create table users_projects(
fk_users int not null,
fk_projetos int not null,
primary key(fk_users, fk_projetos),
foreign key(fk_users) references users(id),
foreign key(fk_projetos) references projetos(id)
);

alter table users auto_increment = 1630;

insert into users(nome,username,email,senha)
values('Julio', 'TheDestructor', 'estevaoleviefefh@outlook.com', 'chhar');

select * from users