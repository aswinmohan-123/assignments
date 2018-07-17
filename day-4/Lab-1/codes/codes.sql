select first_name,last_name from contact;
result:/*+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Rachel     | Green     |
| Monica     | Geller    |
| Joey       | Tribbiani |
| Chandler   | Bing      |
| Ross       | Geller    |
| Carol      | Ross      |
| Richard    | Burke     |
| Lauren     | Tom       |
| Tom        | Selleck   |
| Pete       | Becker    |
| Jon        | Favreau   |
| Kathy      |           |
| Leslie     |           |
| Michael    | Rapaport  |
| Paget      | Brewster  |
| Paget      | Brewster  |
| Emma       | Ross      |
| Emma       | Ross      |
+------------+-----------+*/
select contact.first_name,contact.last_name,status.status from contact,status where contact.status_id=status.id;
/*
+------------+-----------+----------+
| first_name | last_name | status   |
+------------+-----------+----------+
| Rachel     | Green     | active   |
| Joey       | Tribbiani | active   |
| Chandler   | Bing      | active   |
| Ross       | Geller    | active   |
| Richard    | Burke     | active   |
| Lauren     | Tom       | active   |
| Tom        | Selleck   | active   |
| Pete       | Becker    | active   |
| Jon        | Favreau   | active   |
| Kathy      |           | active   |
| Leslie     |           | active   |
| Michael    | Rapaport  | active   |
| Paget      | Brewster  | active   |
| Paget      | Brewster  | active   |
| Emma       | Ross      | active   |
| Emma       | Ross      | active   |
| Monica     | Geller    | inactive |
| Carol      | Ross      | inactive |
+------------+-----------+----------+
18 rows in set (0.00 sec)
*/
select contact.first_name,contact.last_name,status.status from contact,status where status.status='active';
/*
+------------+-----------+--------+
| first_name | last_name | status |
+------------+-----------+--------+
| Rachel     | Green     | active |
| Monica     | Geller    | active |
| Joey       | Tribbiani | active |
| Chandler   | Bing      | active |
| Ross       | Geller    | active |
| Carol      | Ross      | active |
| Richard    | Burke     | active |
| Lauren     | Tom       | active |
| Tom        | Selleck   | active |
| Pete       | Becker    | active |
| Jon        | Favreau   | active |
| Kathy      |           | active |
| Leslie     |           | active |
| Michael    | Rapaport  | active |
| Paget      | Brewster  | active |
| Paget      | Brewster  | active |
| Emma       | Ross      | active |
| Emma       | Ross      | active |
+------------+-----------+--------+
*/
select contact.id,contact.first_name,contact.last_name,status.status from contact,status group by contact.first_name;
/*
+----+------------+-----------+--------+
| id | first_name | last_name | status |
+----+------------+-----------+--------+
|  7 | Carol      | Ross      | active |
|  5 | Chandler   | Bing      | active |
| 18 | Emma       | Ross      | active |
|  4 | Joey       | Tribbiani | active |
| 12 | Jon        | Favreau   | active |
| 13 | Kathy      |           | active |
|  9 | Lauren     | Tom       | active |
| 14 | Leslie     |           | active |
| 15 | Michael    | Rapaport  | active |
|  2 | Monica     | Geller    | active |
| 16 | Paget      | Brewster  | active |
| 11 | Pete       | Becker    | active |
|  1 | Rachel     | Green     | active |
|  8 | Richard    | Burke     | active |
|  6 | Ross       | Geller    | active |
| 10 | Tom        | Selleck   | active |
+----+------------+-----------+--------+
16 rows in set (0.00 sec)
*/
select count(first_name) from contact;
/*
+-------------------+
| count(first_name) |
+-------------------+
|                18 |
+-------------------+
1 row in set (0.00 sec)
*/
select count(first_name) from contact where status_id=1;
/*
+-------------------+
| count(first_name) |
+-------------------+
|                16 |
+-------------------+
1 row in set (0.00 sec)
*/
select count(first_name) from contact where status_id=2;
/*
+-------------------+
| count(first_name) |
+-------------------+
|                 2 |
+-------------------+
1 row in set (0.00 sec)
*/
select count(distinct first_name) from contact;
/*
+----------------------------+
| count(distinct first_name) |
+----------------------------+
|                         16 |
+----------------------------+
1 row in set (0.00 sec)
*/
SELECT first_name,COUNT(*) c FROM contact GROUP BY first_name HAVING c > 1;
/*+------------+---+
| first_name | c |
+------------+---+
| Emma       | 2 |
| Paget      | 2 |
+------------+---+
2 rows in set (0.00 sec)
*/
select first_name,last_name from contact where last_name!='' and status_id=1;
/*
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Rachel     | Green     |
| Joey       | Tribbiani |
| Chandler   | Bing      |
| Ross       | Geller    |
| Richard    | Burke     |
| Lauren     | Tom       |
| Tom        | Selleck   |
| Pete       | Becker    |
| Jon        | Favreau   |
| Michael    | Rapaport  |
| Paget      | Brewster  |
| Paget      | Brewster  |
| Emma       | Ross      |
| Emma       | Ross      |
+------------+-----------+
14 rows in set (0.00 sec)
*/
select contact.first_name,contact.last_name,status.status from contact,status where contact.status_id=status.id and contact.parent_id=0;
/*
+------------+-----------+----------+
| first_name | last_name | status   |
+------------+-----------+----------+
| Rachel     | Green     | active   |
| Joey       | Tribbiani | active   |
| Chandler   | Bing      | active   |
| Ross       | Geller    | active   |
| Richard    | Burke     | active   |
| Lauren     | Tom       | active   |
| Tom        | Selleck   | active   |
| Pete       | Becker    | active   |
| Jon        | Favreau   | active   |
| Kathy      |           | active   |
| Michael    | Rapaport  | active   |
| Paget      | Brewster  | active   |
| Paget      | Brewster  | active   |
| Emma       | Ross      | active   |
| Monica     | Geller    | inactive |
| Carol      | Ross      | inactive |
+------------+-----------+----------+
16 rows in set (0.00 sec)
*/
select parent.first_name as parent_first_name,parent.last_name as parent_last_name,child.first_name as child_first_name,child.last_name as child_last_name from (select first_name,last_name,id from contact where parent_id=0) as parent,(select first_name,last_name,parent_id from contact where parent_id!=0)as child where parent.id=child.parent_id;
/*
+-------------------+------------------+------------------+-----------------+
| parent_first_name | parent_last_name | child_first_name | child_last_name |
+-------------------+------------------+------------------+-----------------+
| Ross              | Geller           | Emma             | Ross            |
+-------------------+------------------+------------------+-----------------+
*/
 select contact.first_name,contact.last_name,phone.number from contact,phone where phone.contact_id=contact.id and contact.first_name='rachel';
/*
+------------+-----------+----------+
| first_name | last_name | number   |
+------------+-----------+----------+
| Rachel     | Green     | 78564342 |
| Rachel     | Green     | 9895434  |
| Rachel     | Green     | 23525235 |
+------------+-----------+----------+
3 rows in set (0.00 sec)
*/
select contact.first_name,contact.last_name,phone.number from contact,phone where phone.contact_id=contact.id and contact.first_name='rachel' and phone.primary=1;
/*
+------------+-----------+---------+
| first_name | last_name | number  |
+------------+-----------+---------+
| Rachel     | Green     | 9895434 |
+------------+-----------+---------+
1 row in set (0.00 sec)
*/
select contact.first_name,contact.last_name,phone.number,phone_type.type from contact,phone,phone_type where phone.contact_id=contact.id and phone.type=phone_type.id;
/*
+------------+-----------+-------------+-------+
| first_name | last_name | number      | type  |
+------------+-----------+-------------+-------+
| Rachel     | Green     | 78564342    | WORK  |
| Rachel     | Green     | 9895434     | HOME  |
| Rachel     | Green     | 23525235    | OTHER |
| Joey       | Tribbiani | 43346346    | WORK  |
| Joey       | Tribbiani | 346346346   | HOME  |
| Chandler   | Bing      | 346236      | WORK  |
| Chandler   | Bing      | 5626456     | HOME  |
| Ross       | Geller    | 54456456    | WORK  |
| Ross       | Geller    | 54634563456 | HOME  |
| Monica     | Geller    | 436346      | WORK  |
| Monica     | Geller    | 5464574357  | HOME  |
+------------+-----------+-------------+-------+
11 rows in set (0.00 sec)
*/
select distinct contact.first_name,contact.last_name from contact,phone where phone.contact_id=contact.id;
/*
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Rachel     | Green     |
| Monica     | Geller    |
| Joey       | Tribbiani |
| Chandler   | Bing      |
| Ross       | Geller    |
+------------+-----------+
5 rows in set (0.00 sec)
*/
select tab1.first_name,tab1.last_name,tab1.number,tab2.type from ( select  first_name,last_name,number,type from  contact left join  phone on (contact.id=phone.contact_id )) as tab1 left join (phone_type as tab2)  on (tab1.type = tab2.id);
/*
+------------+-----------+-------------+-------+
| first_name | last_name | number      | type  |
+------------+-----------+-------------+-------+
| Rachel     | Green     | 78564342    | WORK  |
| Monica     | Geller    | 436346      | WORK  |
| Joey       | Tribbiani | 43346346    | WORK  |
| Chandler   | Bing      | 346236      | WORK  |
| Ross       | Geller    | 54456456    | WORK  |
| Rachel     | Green     | 9895434     | HOME  |
| Monica     | Geller    | 5464574357  | HOME  |
| Joey       | Tribbiani | 346346346   | HOME  |
| Chandler   | Bing      | 5626456     | HOME  |
| Ross       | Geller    | 54634563456 | HOME  |
| Rachel     | Green     | 23525235    | OTHER |
| Carol      | Ross      | NULL        | NULL  |
| Richard    | Burke     | NULL        | NULL  |
| Lauren     | Tom       | NULL        | NULL  |
| Tom        | Selleck   | NULL        | NULL  |
| Pete       | Becker    | NULL        | NULL  |
| Jon        | Favreau   | NULL        | NULL  |
| Kathy      |           | NULL        | NULL  |
| Leslie     |           | NULL        | NULL  |
| Michael    | Rapaport  | NULL        | NULL  |
| Paget      | Brewster  | NULL        | NULL  |
| Paget      | Brewster  | NULL        | NULL  |
| Emma       | Ross      | NULL        | NULL  |
| Emma       | Ross      | NULL        | NULL  |
+------------+-----------+-------------+-------+
24 rows in set (0.00 sec)
*/
select tab1.first_name,tab1.last_name,tab1.number from(select first_name,last_name,number from contact join phone on (contact.id=phone.contact_id and phone.primary=1)) as tab1;
/*
+------------+-----------+-----------+
| first_name | last_name | number    |
+------------+-----------+-----------+
| Rachel     | Green     | 9895434   |
| Joey       | Tribbiani | 346346346 |
| Monica     | Geller    | 436346    |
+------------+-----------+-----------+
3 rows in set (0.00 sec)
*/
select first_name,last_name,number,type from phone right join contact on phone.contact_id=contact.id where number is null;
/*
+------------+-----------+--------+------+
| first_name | last_name | number | type |
+------------+-----------+--------+------+
| Carol      | Ross      | NULL   | NULL |
| Richard    | Burke     | NULL   | NULL |
| Lauren     | Tom       | NULL   | NULL |
| Tom        | Selleck   | NULL   | NULL |
| Pete       | Becker    | NULL   | NULL |
| Jon        | Favreau   | NULL   | NULL |
| Kathy      |           | NULL   | NULL |
| Leslie     |           | NULL   | NULL |
| Michael    | Rapaport  | NULL   | NULL |
| Paget      | Brewster  | NULL   | NULL |
| Paget      | Brewster  | NULL   | NULL |
| Emma       | Ross      | NULL   | NULL |
| Emma       | Ross      | NULL   | NULL |
+------------+-----------+--------+------+
13 rows in set (0.01 sec)
*/
select contact.first_name,contact.last_name,status.status from contact,status,phone where contact.status_id=status.id and contact.id=phone.contact_id and status.status='active';
/*
+------------+-----------+--------+
| first_name | last_name | status |
+------------+-----------+--------+
| Rachel     | Green     | active |
| Rachel     | Green     | active |
| Rachel     | Green     | active |
| Joey       | Tribbiani | active |
| Joey       | Tribbiani | active |
| Chandler   | Bing      | active |
| Chandler   | Bing      | active |
| Ross       | Geller    | active |
| Ross       | Geller    | active |
+------------+-----------+--------+
9 rows in set (0.00 sec)
*/
select contact.first_name,contact.last_name,phone.number,phone_type.type from contact,phone,phone_type where contact.id=phone.contact_id and phone.type=phone_type.id;
/*
+------------+-----------+-------------+-------+
| first_name | last_name | number      | type  |
+------------+-----------+-------------+-------+
| Rachel     | Green     | 78564342    | WORK  |
| Rachel     | Green     | 9895434     | HOME  |
| Rachel     | Green     | 23525235    | OTHER |
| Joey       | Tribbiani | 43346346    | WORK  |
| Joey       | Tribbiani | 346346346   | HOME  |
| Chandler   | Bing      | 346236      | WORK  |
| Chandler   | Bing      | 5626456     | HOME  |
| Ross       | Geller    | 54456456    | WORK  |
| Ross       | Geller    | 54634563456 | HOME  |
| Monica     | Geller    | 436346      | WORK  |
| Monica     | Geller    | 5464574357  | HOME  |
+------------+-----------+-------------+-------+
11 rows in set (0.00 sec)
*/
create table country(id int,name varchar(50),primary key (id));
create table city(id int,name varchar(50),country_id int,primary key(id));
create table address(id int,street_number varchar(50),street varchar(50),city_id int,primary key(id));
alter table address add foreign key(city_id) references city(id);
alter table city add foreign key(country_id) references country(id);
create table contact_address(id int,contact_id int,address_id int,primary key(id));
alter table contact_address add foreign key(contact_id) references contact(id);
alter table contact_address add foreign key(address_id) references address(id);
alter table contact drop foreign key status_id;
delete from contact where first_name='phoebe';
create index contact_id on phone(contact_id);
alter table phone drop index contact_id;
delete from status;
drop table status;
insert into country(name) values('india');
insert into country(name) values('united kingdom');
insert into city(name,country_id) values('kochi',1);
insert into city(name,country_id) values('Trivandrum',1);
insert into city(name,country_id) values('Sheffield',2);
insert into city(name,country_id) values('Leeds',2);
select group_concat(city.name separator ',') as cities,country.name as countrys from city,country where country.id=city.country_id group by country.name;

