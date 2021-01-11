select 'Albums released after 1991' as '';

delete
from albums
where release_date > 1991;

select 'Albums with the genre ''disco''' as '';

delete
from albums
where genre like 'disco';

select 'Albums by ''Whitney Houston''' as '';

delete
from albums
where artist like 'Whitney Houston';