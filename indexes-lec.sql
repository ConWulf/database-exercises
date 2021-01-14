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

insert into pets (pet_name, owner_id, age)
values ('Puddle', null, 3);

insert into pets (pet_name,owner_id, age)
values ('charlie', 1,  4);

insert into pets (pet_name, age)
values ('Patch', 4);

insert into owners (name, address)
values ('jane doe', '1234 random address');

describe pets;
describe owners;

select * from pets;
select * from owners;