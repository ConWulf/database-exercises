use join_test_db;

drop table if exists roles;
drop table if exists users;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),
('sam', 'sam@example.com', 2),
('bee', 'bee@example.com', 2),
('charlie', 'charlie@example.com', 2),
('f', 'f@example.com', null);

select users.name, r.name
from users
join roles r on r.id = users.role_id;

select users.name, r.name
from users
left join roles r on r.id = users.role_id;

select users.name, r.name
from users
right join roles r on r.id = users.role_id;

select count(users.name), r.name
from users
right join roles r on r.id = users.role_id
group by r.name;