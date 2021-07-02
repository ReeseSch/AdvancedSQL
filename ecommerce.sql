1
create table users(
  user_id SERIAL PRIMARY KEY,
  name VARCHAR,
  email VARCHAR
  );
  
 create table products(
   product_id SERIAL PRIMARY KEY,
   name VARCHAR,
   price float
   );
   
create table cart(
  cart_id SERIAL PRIMARY KEY,
  user_id int NOT NULL REFERENCES users(user_id),
  product_id int NOT NULL REFERENCES products(product_id),
  quantity int NOT NULL
  );

  2
  INSERT INTO users (name, email)
VALUES ('Francine', 'fran395@gmail.com');
INSERT INTO users (name, email)
VALUES ('Bob', 'bobbyG@gmail.com');
INSERT INTO users (name, email)
VALUES ('Paul', 'ducksarecool@gmail.com');


INSERT INTO products (name, price)
VALUES ('Cookie Cutter 9000', 499.99);
INSERT INTO products (name, price)
VALUES ('Super Fan', 59.99);
INSERT INTO products (name, price)
VALUES ('Larrys Quality Cake Batter', 20.99);
INSERT INTO products (name, price)
VALUES ('Xtreme Energy Drink', 4.99);
INSERT INTO products (name, price)
VALUES ('Senor Caliente Hot Sauce', 8.99);


insert into cart (user_id, product_id, quantity)
values (1, 4, 4);
insert into cart (user_id, product_id, quantity)
values (1, 1, 6);
insert into cart (user_id, product_id, quantity)
values (2, 5, 8);
insert into cart (user_id, product_id, quantity)
values (2, 2, 1);
insert into cart (user_id, product_id, quantity)
values (3, 3, 3);
insert into cart (user_id, product_id, quantity)
values (3, 1, 5);

-- QUERIES
select p.name, c.quantity
from cart c
join products p on p.product_id = c.product_id
where c.user_id = 1

select sum(p.price*c.quantity)
from cart c
join products p on p.product_id = c.product_id
where c.user_id = 1

update cart
set quantity = 20
where user_id = 2 and product_id = 5