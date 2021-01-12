use codeup_test_db;

select name
as 'albums by pink floyd'
from albums
where artist like 'pink floyd';

select release_date
as 'the year Sgt. Pepper''s Lonely Hearts Club Band eas released'
from albums
where name like 'Sgt. Pepper''s Lonely Hearts Club Band';

select genre
as 'the The genre for Nevermind'
from albums
where name like 'Nevermind';

select name
as 'albums released in the 1990s'
from albums
where  release_date between 1990 and 1999;

select name
as 'albums that had less than 20 million certified sales'
from albums
where sales < 20;

select name
as 'albums with a genre of "Rock"'
from albums
where genre like 'Rock';

select name
as 'albums whose genre includes "Rock"'
from albums
where genre like '%Rock%' ;
