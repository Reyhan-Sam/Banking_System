create table acc (
  accno int(3) primary key,
  name varchar(50) not null,
  dob date not null,
  telno int(8),
  passwd varchar(50)
);

create table transac (
  accno int(3) not null,
  transtype char(1) check (transtype in ('d','w')),
  dot date not null,
  transamt int(40) not null,
  balance int(40) not null,
  foreign key (accno) references acc(accno)  -- Added foreign key constraint
);

insert into acc (accno, name, dob, telno, passwd) values (101, 'Khalil Bellamy', '2000-09-09', 95526426, 'iamkhalil07');
insert into transac (accno, transtype, dot, transamt, balance) values (101, 'd', '2019-07-01', 1500, 1500);

insert into acc (accno, name, dob, telno, passwd) values (102, 'Maxim Ulyanov', '2001-10-01', 94474612, 'maximluvsrus128');
insert into transac (accno, transtype, dot, transamt, balance) values (102, 'd', '2019-06-30', 1600, 1600);

insert into transac (accno, transtype, dot, transamt, balance) values (101, 'w', '2019-11-19', 270, 1230);

#select * from acc;
#select * from transac;
