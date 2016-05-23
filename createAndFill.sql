DROP TABLE USER;

CREATE TABLE `user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `isAdmin` bit(1) DEFAULT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

insert into user (name, age, isAdmin) values ('Igor', 36, 1);
insert into user (name, age, isAdmin) values ('Uasa', 20, 0);
insert into user (name, age, isAdmin) values ('Admin', 18, 0);
insert into user (name, age, isAdmin) values ('User', 20, 0);
insert into user (name, age, isAdmin) values ('Fake', 20, 1);
insert into user (name, age, isAdmin) values ('Anonim', 21, 1);
insert into user (name, age, isAdmin) values ('MrX', 50, 0);
insert into user (name, age, isAdmin) values ('MrsY', 18, 0);
insert into user (name, age, isAdmin) values ('one', 19, 0);
insert into user (name, age, isAdmin) values ('two', 29, 0);
insert into user (name, age, isAdmin) values ('newUser', 30, 0);



