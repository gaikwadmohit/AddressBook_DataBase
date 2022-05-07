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
zip = 852369
WHERE fname = 'swap';
