1
alter table animals
add column location varchar

2
insert into animals (type, age, location, name)
-- values ('dog', 3, 'Nebraska', 'Hans');
-- values ('cat', 6, 'Arizona', 'Mr Snuggles');
values ('snake', 1, 'Iowa', 'Slytherin');

4
alter table animals
rename column type to species

5
alter table animals
rename column type to species