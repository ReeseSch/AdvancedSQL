1
update customer
set fax = null

2
update customer
set company = 'Self'
where company is null

3
update customer
set last_name = 'Thompson'
where customer_id = 28

4
update customer
set support_rep_id = 4
where email = 'luisrojas@yahoo.cl'

5
update track
set composer = 'The Darkness Around Us'
where composer is null and genre_id = 3

