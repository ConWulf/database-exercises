use codeup_test_db;

select 'changing All albums' as '';

update albums
set sales = sales * 10;

select * from albums;

select 'changing All albums released before 1980' as '';


update albums
set release_date = release_date - 100
where release_date < 1980;

select name, release_date
from albums
where release_date < 1980;

select 'changing All albums by Michael Jackson' as '';


update albums
set artist = 'peter jackson'
where artist like 'Michael Jackson';

select name, artist
from albums
where artist like 'peter jackson';
