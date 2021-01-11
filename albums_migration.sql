USE codeup_test_db;

drop table if exists albums;


create table if not exists albums (
    id int unsigned not null auto_increment,
    artist varchar(100) not null,
    name varchar(200),
    release_date int unsigned,
    genre varchar(150),
    sales float,
    primary key(id)
);