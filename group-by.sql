1
select count(*), g.name
from track t
join genre g on g.genre_id = t.genre_id
group by g.name

2
select count(*), g.name
from track t
join genre g on g.genre_id = t.genre_id
where g.name = 'Pop' or g.name = 'Rock'
group by g.name

3
select count(*), at.name
from album ab
join artist at on ab.artist_id = at.artist_id
group by at.name