insert into user(active, email, password, username)
            values (true, 'some@some.com', '1', 'admin');
insert into user_role(user_id, roles)
            values (1, 'ADMIN');
