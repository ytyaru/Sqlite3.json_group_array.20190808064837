create table users(id int primary key, json text);
insert into users values(111, '{"id": 1, "age": 12, "name": "yamada"}');
insert into users values(222, '{"id": 1, "age": 25, "name": "suzuki"}');
insert into users values(333, '{"id": 1, "age": 39, "name": "tanaka"}');
.headers on
.mode column

select json_group_array(value) 
from (
    select json_tree.value 
    from users, json_tree(users.json) 
    where json_tree.atom!=''
);

