# Query the two cities in STATION with the shortest and longest CITY names,
# as well as their respective lengths (i.e.: number of characters in the name).
# If there is more than one smallest or largest city,
# choose the one that comes first when ordered alphabetically.
use locations;

select city, char_length(city) as character_count
from cities
where char_length(city) = (
    select max(char_length(city))
    from cities
)
   or char_length(city) = (
    select min(char_length(city))
    from cities
)
order by character_count desc, city
limit 2;



select city, character_length(city) as characer_count
from cities
order by characer_count , city;
