create table users(id int primary key, age int, name text);
insert into users values(111, '12', 'yamada');
insert into users values(222, '25', 'suzuki');
insert into users values(333, '38', 'tanaka');
.headers on
.mode column
select json_group_array(name) from users;
