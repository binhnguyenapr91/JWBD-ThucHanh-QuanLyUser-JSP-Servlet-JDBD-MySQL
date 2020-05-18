create database demo;
use demo;
create table users(
	id int(3) not null auto_increment,
    name varchar(50) not null,
    email varchar(50) not null,
    country varchar(50),
    primary key (id)
);
