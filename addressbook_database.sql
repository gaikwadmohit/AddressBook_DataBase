#UC1
create database AddressBook_services;
show databases;
use AddressBook_services;

#UC2
create table Address_book(
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
select * from address_book;

#UC3
insert into Address_book(fname, lname, city, state, zip, phone, email) values
('Mohit', 'Gaikwad', 'Ahmednagr', 'Maharastra',414501, 9604315270, 'mohit16gaikwad@gmail.com' ),
('swap', 'tingu', 'Agartalla', 'WestBengal', 845700, 8138975257, 'swap@gmail.com' ),
('sonu', 'gaik', 'kolkata', 'Bihar', 794550, 81450945877, 'sonu@gmail.com' ),
('monu', 'gaik', 'chennai', 'TamilNaru', 7125487, 81494545879, 'monu@gmail.com' );

#UC4
UPDATE Address_book
SET city = 'Bangalore',
state = 'Karnataka',
zip = '852369',
WHERE fname = 'swap';

#UC5
DELETE FROM  Address_book
WHERE fname = 'swap';

#UC6
SELECT * FROM Address_book
where city = 'Ahmednagr' or state = 'Maharastra';


#UC7
SELECT COUNT(city or state)
FROM Address_book;

#UC8
select fname
  from Address_book
  where city = 'Karnataka'
  order by fname asc;
  
  #UC9
Alter table Address_book add type varchar(15) after lname;
update  Address_book set type='Family' where fname ='Mohit';
update  Address_book set type='Friends' where fname  ='swap';
update  Address_book set type='Friends' where fname  ='sonu';
update  Address_book set type='Profession' where fname  ='monu';

#UC10
SELECT COUNT(type) AS Number_Of_Contact_Person 
FROM Address_book;



#UC11

insert into Address_book(fname, lname, city, state, zip, phone, email) values
('Mohit', 'Gaikwad', 'Ahmednagr', 'Maharastra',414501, 9604315270, 'mohit16gaikwad@gmail.com' ),
update  Address_book set type='Friends' where id =5;


#UC12

create table TypesOfContacts
(
typeid int primary key ,
typename varchar(50) not null);

insert into Typesofcontacts
values
(1,'Family'),
(2,'Friends'),
(3,'Business');
alter table Address_book
add contactid int primary key identity(1,1);

select *from Address_book;

create table AddressBookNames
(addressBookId int primary key identity(1,1),
addressBookName varchar(50) not null );

insert into AddressBooknames values ('S'),('P'),('H');
select * from AddressBookNames;


create table addressbookMappeing
(contactid int not null, addressbookid int not null);

insert into addressbookMappeing
values
(1,1),(2,1),(3,2);

select * from Address_book;
select a.fname,a.phone,a.city,a.state,a.email
from Address_book a
join addressbookMappeing d
on a.contactid= d.contactId
join AddressBookNames b
on b.addressBookId= d.addressbookId

#UC13

--UC6
select fname,lName,city from Address_book
where fname='Appu';

--UC7
select city,count(*) from Address_book
where city='Athani'
group by city;

--UC8
select * from  Address_book
where city='Athani'
order by fname,lName;

--UC10
select * from Address_book;

select typename,count(*) numberOfContactPersons from Address_book a
join addressbookMappeing am
on am.contactid= a.contactid
join TypesOfContacts t
on t.typeid= am.addressbookid
group by t.typename;
