delete from user_role;
delete from user;

insert into user(id, active, password, username) values
(1, true, '$2a$08$BhyXl5qBo03CS9LR1qNY/up4LoYaC58DVm.iauW8jeeV5ArMkYbD6', 'u'),
(2, true, '$2a$08$BhyXl5qBo03CS9LR1qNY/up4LoYaC58DVm.iauW8jeeV5ArMkYbD6', 'admin');

insert into user_role(user_id, roles) VALUES
(1, 'USER'), (1,'ADMIN'),
(2, 'USER');