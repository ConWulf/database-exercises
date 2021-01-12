use codeup_test_db;

select 'deleting Albums released after 1991' as '';

delete
from albums
where release_date > 1991;

select 'deleting Albums with the genre ''disco''' as '';

delete
from albums
where genre like 'disco';

select 'deleting Albums by ''Whitney Houston''' as '';

delete
from albums
where artist like 'Whitney Houston';