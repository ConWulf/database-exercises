
drop database if exists locations;
create database if not exists locations;

use locations;
drop table if exists cities;

create table if not exists cities(
    id int unsigned not null auto_increment,
    city varchar(100),
    state varchar(100),
    address varchar(200),
    primary key (id)
)