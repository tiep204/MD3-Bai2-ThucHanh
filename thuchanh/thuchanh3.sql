create database QuanlySinhVien;
use quanlysinhvien;
create table class(
classid int not null primary key auto_increment,
classname varchar(60) not null,
stadate datetime not null,
status bit
);

create table studentt(
studenid int not null primary key auto_increment,
studentname varchar(30) not null,
address varchar(50),
phone varchar(20),
status bit,
classid int not null,
foreign key(classid) references class (classid)
);

create table subject(
subid int not null auto_increment primary key,
SubName VARCHAR(30) NOT NULL,
 Credit TINYINT NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
 Status BIT DEFAULT 1
);

create table mark(
markid int not null auto_increment primary key,
subid int not null,
studenid int not null,
mark float default 0 check (mark between 0 and 100 ),
Examtime tinyint default 1,
unique (subid, studenid),
foreign key (subid) references subject (subid),
foreign key (studenid) references studentt(studenid)
);