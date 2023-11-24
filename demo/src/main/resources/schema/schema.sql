create database library_app;

create table book(
    id int NOT NULL auto_increment primary key,
	name varchar(100),
	isbn varchar(50),
	subject varchar(50),
	author varchar(100),
	total_count int,
	available_count int
);


create table student(
    id int NOT NULL auto_increment primary key,
	name varchar(100),
	course varchar(50),
	roll_no varchar(50),
	address varchar(100)
);

create table users(
    id int NOT NULL auto_increment primary key,
    username varchar(50) not null,
    password varchar(500) not null
);

create table roles(
    id int NOT NULL auto_increment primary key,
    name varchar(50) not null
);

create table users_roles(
    id int NOT NULL auto_increment primary key,
    USER_ID int not null,
    ROLE_ID int not null,
    constraint fk_users foreign key(USER_ID) references users(id),
    constraint fk_role foreign key(ROLE_ID) references roles(id)
);
