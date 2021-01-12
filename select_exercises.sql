use codeup_test_db;

select 'albums by pink floyd' as '';

select name
from albums
where artist like 'pink floyd';

select 'the year Sgt. Pepper''s Lonely Hearts Club Band eas released' as '';

select release_date
from albums
where name like 'Sgt. Pepper''s Lonely Hearts Club Band';

select 'the The genre for Nevermind' as '';

select genre
from albums
where name like 'Nevermind';

select 'albums released in the 1990s' as '';

select name
from albums
where  release_date between 1990 and 1999;

select  'albums that had less than 20 million certified sales' as '';

select name
from albums
where sales < 20;

select 'albums with a genre of "Rock"' as '';

select name
from albums
where genre like 'Rock';

select 'albums whose genre includes "Rock"' as '';

select name
as 'albums whose genre includes "Rock"'
from albums
where genre like '%Rock%' ;
