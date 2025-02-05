--Create table in postgres
create table users.users_roles(
 id serial not NULL,
 name VARCHAR(100) NOT NULL
);

---get users
select * from users.users u 

select * from users.users_roles ur 

INSERT INTO users.users
(id_usr, name_user)
VALUES(nextval('users.users_id_usr_seq'::regclass), 'jorge');