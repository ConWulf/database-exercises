USE codeup_test_db;

drop table if exists albums;

create table if not exists albums (
    id int unsigned not null auto_increment,
    artist varchar(100) not null,
    name varchar(200),
    release_date int unsigned,
    sales float,
    genre char(50),
    primary key(id)
)