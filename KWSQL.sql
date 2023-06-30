CREATE DATABASE record_company;
USE record_company;
CREATE TABLE bands (
id INT NOT NULL auto_increment,
 name VARCHAR (255) NOT NULL,
 primary key (id)
); 
CREATE TABLE albums(
id INT NOT NULL auto_increment,
name VARCHAR (255) NOT NULL,
release_year INT,
band_id INT NOT NULL,
primary key (id),
FOREIGN KEY (band_id) references bands (id)
);








INSERT INTO bands (name)
values ('Iron Maiden');

Insert into bands (name)
values ('Deuce'), ('Avenged Sevenfold'), ('Ankor');

SELECT *
FROM bands;

SELECT *
FROM bands
limit 2;


select name from bands;

select id AS 'ID', name AS 'Band Name'
from bands;

select * from bands order by name desc;

INSERT INTO albums (name, release_year, band_id)
values ('The Number of the Beasts', 1985, 1),
		('Power Slave', 1984, 1),
        ('Nightmare', 2018, 2),
        ('Nightmare', 2010, 3),
        ('Test Album', NULL, 3);
        
SELECT * 
FROM albums;

select name from albums;

select distinct name from albums;

update albums
set release_year = 1982
where id = 1;

select *
from albums
where release_year < 2000;

select *
from albums
where name like '%er%' or band_id = 2;

select *
from albums
where release_year = 1984 and band_id = 1;

select*
from albums 
where release_year between 2000 and 2018;

select *
from albums
where release_year is null;

delete from albums
where id = 5; 
select * 
from albums;

select *
from bands
join albums on bands.id = albums.band_id;

select *
from albums
right join bands on bands.id = albums.band_id;

select sum(release_year) from albums;


select band_id, count(band_id) from albums
group by band_id;

select b.name as band_name, count(a.id) as num_albums
from bands as b
left join albums as a on b.id = a.band_id
where b.name = 'Deuce'
group by b.id
having num_albums = 1;












