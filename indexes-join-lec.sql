use codeup_test_db;

-- ========== PRIMARY KEY

drop table if exists pets;

create table if not exists pets(
    id int unsigned,
    pet_name varchar(50) not null,
    owner_name varchar(50),
    age int unsigned
);


# create table if not exists pets(
#     id int unsigned primary key,
#     pet_name varchar(50) not null,
#     owner_name varchar(50),
#     age int unsigned
# );

describe pets;

show index from pets;

alter table pets
modify column id int unsigned primary key auto_increment;

-- ========== INDEX / KEY

show index from pets;

-- add name index
alter table pets
add index pet_name_key (pet_name);


-- ========= UNIQUE INDEX

-- create pets w/ unique name and owner

drop table if exists pets;

create table if not exists pets
(
    id         int unsigned auto_increment primary key ,
    pet_name   varchar(50) not null,
    owner_name varchar(50),
    age        int unsigned,
    unique unique_pn_on (pet_name, owner_name)
);

alter table pets
drop index unique_pn_on;

alter table pets
add unique unique_pn_on (pet_name, owner_name);

-- test unique constraints

# insert into pets (pet_name, owner_name, age)
# values ('Skippy', 'Jane Doe', 3);
#
# insert into pets (pet_name, owner_name, age)
# values ('Scruffy', 'Jane Doe', 3);
#
# insert into pets (pet_name, owner_name, age)
# values ('Bob', 'Jane Doe', 3);

# insert into pets (pet_name, owner_name, age)
# values ('Skippy', 'Jane Doe', 3);

show index from pets;


-- ========== constraint



-- ======== FOREIGN KEYS

drop table if exists owners;

create table if not exists owners(
    id int unsigned auto_increment primary key,
    name varchar(50) not null,
    address varchar(255) default 'unknown'
);

drop table if exists pets;

create table if not exists pets
(
    id         int unsigned auto_increment primary key ,
    pet_name   varchar(50) not null,
    age        int unsigned,
    owner_id int unsigned,
    foreign key (owner_id) references owners(id)
);

insert into owners (name, address)
values ('Banana Man', '1263 banana Rd.');

insert into pets (pet_name, age, owner_id)
values ('puddles', 4, 1);

insert into pets (pet_name, age, owner_id)
values ('Frank', 4, 1);

select * from owners;
select * from pets;

select pets.pet_name, owners.address as owner_addres
from pets
join owners on pets.owner_id = owners.id;

select owners.address, count(owners.address)
from pets
join owners on pets.owner_id = owners.id
group by owners.address;

describe pets;
describe owners;

select * from pets;
select * from owners;

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

truncate users;

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

SELECT users.name as user_name, roles.name as role_name
FROM users
right JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM users
left JOIN roles ON users.role_id = roles.id;
