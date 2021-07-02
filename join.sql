-- 1
-- select * from invoice
-- join invoice_line on invoice_line.invoice_id = invoice.invoice_id
-- where invoice_line.unit_price >= 1.00

-- 2
-- select i.invoice_date, c.first_name, c.last_name, i.total
-- from invoice i
-- join customer c on i.customer_id = c.customer_id

-- 3
-- select c.first_name as CustomerFName, c.last_name, e.first_name as SalesRepName, e.last_name
-- from customer c
-- join employee e on c.support_rep_id = e.employee_id;

-- 5
-- select ar.name, al.title
-- from artist ar
-- join album al on al.artist_id = ar.artist_id;

-- 6
-- select playlist_track.track_id
-- from playlist_track
-- join playlist on playlist.playlist_id = playlist_track.playlist_id
-- where playlist.name = 'Music'

-- 7
-- select t.name
-- from track t
-- join playlist_track p on p.track_id = t.track_id
-- where p.playlist_id = 5

-- 8
-- select t.name, p.name
-- from track t
-- join playlist_track pt on pt.track_id = t.track_id
-- join playlist p on pt.playlist_id = p.playlist_id

-- 9
-- select t.name, a.title
-- from album a
-- join track t on t.album_id = a.album_id
-- join genre g on g.genre_id = t.genre_id
-- where g.name = 'Alternative & Punk'
n