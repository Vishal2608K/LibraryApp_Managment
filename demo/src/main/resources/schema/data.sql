
insert into book(name,isbn,subject,author,total_count,available_count)
values('Spring In Action','1234-8789-5777','Web Application Development', 'Manning Publication', 25, 10 );


insert into student(name,course,roll_no,address)
values('Rudra','B.Tech','21/CS/35','Faridabad');

insert into users(username,password) values('user','user');
insert into users(username,password) values('admin','admin');

insert into roles(name) values('ROLE_USER');
insert into roles(name) values('ROLE_ADMIN');

insert into users_roles(USER_ID,ROLE_ID) VALUES(1,1);
insert into users_roles(USER_ID,ROLE_ID) VALUES(2,1);
insert into users_roles(USER_ID,ROLE_ID) VALUES(2,2);
