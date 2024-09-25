drop table if exists trans;
drop table if exists customer;
drop table if exists book_bookcase;
drop table if exists bookcase;
drop table if exists book;
drop table if exists publisher;

create table publisher(
id INT,
name VARCHAR(50) not null,
city VARCHAR(40),
primary key(id)
)
engine=innodb;

create table customer(
id int auto_increment,
name varchar(30) not null,
address varchar(50),
phone varchar(15),
primary key (id)
)
engine = innodb;

create table book(
id int auto_increment,
title varchar(50) not null,
price decimal(5,2),
pubid int,
primary key (id),
foreign key(pubid) references publisher(id)
)engine = innodb;

create table trans(
custid int not null,
bookid int not null,
tdate date,
foreign key (custid) references customer(id),
foreign key (bookid) references book(id))
engine = innodb;

insert into publisher values
(300,'Best Books', 'New York'),
(301,'Penguin', 'Chicago'),
(302,'IU Press', 'Bloomington');

insert into customer(id,name,address,phone) values
(501,'Rod','100 Old Dead Pig Road','812-123-4567'),
(502,'Kate','123 Laburnam Drive','555-222-6666'),
(503,'Dan','2221 E. West Blvd','987-654-3210');

insert into book values
(1,'Controlling Your Dog',14.00,300),
(2,'Adventures in SQL',49.95,NULL),
(3,'Beginning Scheduling',19.95,301);

insert into trans values
(501,1,'2020-06-25'),
(502,2,'2020-06-06'),
(502,2,'2021-02-24'),
(503,3,'2021-05-01'),
(502,1,'2020-12-12'),
(503,2,'2020-08-12');
