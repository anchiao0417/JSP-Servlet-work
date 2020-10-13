create database test

use test

create table Users(
userid int primary key not null identity(100,1),
username varchar(50) not null,
userpassword varchar(50) not null
)

create table personalinfo(
LinkedID int primary key not null,
hobby nvarchar(50),
gender int,
age int
)

insert into Users(username,userpassword)
values('dusty','rest123'),
('rabbit','123rab'),
('larry','password54134'),('james','password82220'),
('sharlock','password10272'),
('larryme','password69771')

select * from users

select * from personalinfo