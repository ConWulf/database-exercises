use codeup_test_db;

# 'deleting Albums released after 1991'
delete
from albums
where release_date > 1991;

# 'deleting Albums with the genre ''disco''
delete
from albums
where genre like 'disco';

# 'deleting Albums by ''Whitney Houston''
delete
from albums
where artist like '%Whitney Houston%';