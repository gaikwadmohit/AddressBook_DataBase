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

