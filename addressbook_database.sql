#UC1
create database AD_BOOK_SERVICE;
show databases;
use AD_BOOK_SERVICE;

#UC2
create table adbook(
	id int unsigned not null auto_increment,
	fname varchar(15) not null,
    lname varchar(10) not null,
    city varchar(50) not null,
    state varchar(50) not null,
    zip int not null,
    phone long not null,
    email varchar(100) not null,
     primary key (id)
);
select * from adbook;

#UC3
insert into adbook(fname, lname, city, state, zip, phone, email) values
('Mohit', 'Gaikwad', 'Ahmednagr', 'Maharastra',414501, 9604315270, 'mohit16gaikwad@gmail.com' ),
('swap', 'tingu', 'Agartalla', 'WestBengal', 845700, 8138975257, 'swap@gmail.com' ),
('sonu', 'gaik', 'kolkata', 'Bihar', 794550, 81450945877, 'sonu@gmail.com' ),
('monu', 'gaik', 'chennai', 'TamilNaru', 7125487, 81494545879, 'monu@gmail.com' );

#UC4
UPDATE adbook SET city = 'Bangalore',state = 'Karnataka',zip = 852369 where fname = 'monu';


#UC5
use AD_BOOK_SERVICE;
DELETE FROM  adbook where fname = 'monu';

#UC6
SELECT * FROM adbook where city = 'Ahmednagr' or state = 'Maharashtra';


#UC7
	SELECT COUNT(city or state)
	FROM adbook;

#UC8
select fname
  from adbook
  where city = 'Ahmednagr'
  order by fname asc;
  
  #UC9
Alter table adbook add type varchar(15) after lname;
update  adbook set type='Family' where fname ='Mohit';
update  adbook set type='Friends' where fname  ='swap';
update  adbook set type='Friends' where fname  ='sonu';
update  adbook set type='Profession' where fname  ='monu';

#UC10
SELECT COUNT(type) AS Number_Of_Contact_Person 
FROM adbook;



#UC11

insert into adbook(fname, lname, city, state, zip, phone, email) values('kapil', 'sharma', 'jhasi', 'UP', 414501, 9604315270, 'abcd@gmail.com' );
update  adbook set type='Family' where id =5;


#UC12

CREATE TABLE adbbok1 (id int not null auto_increment primary key,
firstname varchar(15) NOT NULL, lastname varchar(10) NOT NULL,city varchar(50) NOT NULL,state varchar(50) NOT NULL,zip int(6) NOT NULL ,
phone varchar(10) NOT NULL,email varchar(100) NOT NULL UNIQUE);
desc adbbok1;

create table adbook2(id int not null auto_increment primary key,name varchar (20) not null,
ab_id int ,foreign key (ab_id)references adbbok1(id)  );
desc adbook2;

create table adbook3(id int not null primary key,type varchar (20));
desc adbook3;

create table adbook4(a_id int not null,t_id int not null,foreign key(a_id) references adbbok1(id),
foreign key(t_id) references adbook3(id),primary key(a_id,t_id));

use AD_BOOK_SERVICE;

INSERT INTO adbbok1 VALUES
(1,'monu', 'gaik', 'Amravati', 'Maharastra',444806, 9168112901, 'mbg@gmail.com'),
(2,'sonu', 'wad', 'nagpur', 'Maharashtra', 411402, 8138975257, 'mbg1@gmail.com'),
(3,'swapnil', 'gaik', 'dighori', 'Maharashtra', 7125487, 8149454587, 'mbg2@gmail.com'),
(4,'mohit', 'wad', 'chitnispura', 'Maharastra', 414501, 9604315270, 'mbg3@gmail.com');
 
insert into adbook2 values (1,'AdddressBook1', 2); 

insert into adbook3 values(1,'family');
insert into adbook3 values(2,'friends');
insert into adbook3 values(3,'profession');

insert into adbook4(a_id,t_id)values(1,1);

select * from adbbok1;
select * from adbook2;
select * from adbook3;
select * from adbook4;

#UC13
use ad_book_service;
SELECT * from adbbok1 inner join adbbok2 
where city = 'chitnispura' OR stsate = 'MP';

SELECT  city, state, COUNT(*) from adbook
where city = 'chennai' AND state = 'TamilNaru';

SELECT * FROM adbook 
WHERE state = 'Maharashtra' ORDER BY firstname ASC;

SELECT type, count(*) FROM adbook join adbook3 group by type;

select * from adbook
inner join adbook3 ON adbook.id = 1 and adbook3.id IN(1,2);

select * from adbook 
inner join adbook2 inner join adbook3 ON adbook.id = 1 and adbook3.id= '1' and adbook3.id IN (1);
