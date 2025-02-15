use master
CREATE TABLE eventss (
pin_code int,
eventtname varchar(10),
eventttime int,
title varchar(10),
payment int,
city varchar(10),
creatorname varchar(10)
PRIMARY KEY (pin_code),
  admin_id int FOREIGN KEY REFERENCES  adminss (admin_id),
  userr_id int FOREIGN KEY  REFERENCES  userrs (userr_id) ,
  menu_code int FOREIGN KEY  REFERENCES menuus (menu_code),
  v_id int FOREIGN KEY  REFERENCES visitors (v_id),
);
CREATE TABLE adminss (
admin_id int,
adminname varchar(10),
age int ,
email varchar(10),
pass int,
locationstreet varchar(10),
locationBD_NO int,
 PRIMARY KEY (admin_id),
  pin_code int FOREIGN KEY  REFERENCES eventss (pin_code),
);
CREATE TABLE userrs (
userr_id int,
username varchar(10),
email varchar(10),
pass int,
addressstreet varchar(10),
addresBD_NO int,
usertype varchar(10),
 PRIMARY KEY (userr_id),
  pin_code int FOREIGN KEY  REFERENCES eventss (pin_code),
  reg_name int FOREIGN KEY  REFERENCES registrations (reg_name),
);
CREATE TABLE menuus (
menu_code int,
price int,
category int,
quantity int,
description varchar(10),
 PRIMARY KEY (menu_code),
  s_id int FOREIGN KEY  REFERENCES specialofferss (s_id),
);
CREATE TABLE specialofferss (
s_id  int,
company varchar(10),
offertype varchar(10),
offerpercent int,
salary int,
 PRIMARY KEY (s_id),
 menu_code int FOREIGN KEY  REFERENCES menuus (menu_code),
 p_id int FOREIGN KEY  REFERENCES budgets (p_id),
);
CREATE TABLE registrations (
reg_name varchar(10),
reg_address varchar(10),
pass int,
 PRIMARY KEY (reg_name),
 userr_id int FOREIGN KEY  REFERENCES  userrs (userr_id) ,
);
CREATE TABLE budgets (
p_id int,
p_name varchar(10),
amount_paid int,
amount_dispaid int ,
discount int,
total_amount int,
 PRIMARY KEY (p_id),
);
CREATE TABLE servicees (
servicee_id int,
servicee_type varchar(10),
 PRIMARY KEY (servicee_id),
 pin_code int FOREIGN KEY  REFERENCES eventss (pin_code),
);
CREATE TABLE visitors (
v_id int ,
v_name varchar(10),
v_email varchar(10),
pass int,
login varchar(10),
eventname varchar(10),
 PRIMARY KEY (v_id),
 pin_code int FOREIGN KEY  REFERENCES eventss (pin_code),
);
CREATE TABLE Feedbacks (
Feedbackname varchar(1),
);


INSERT INTO  eventss VALUES (10,'Glamour',3,'fashion',200,'GIZA','ahmed mohamed');
INSERT INTO  eventss VALUES (20,'cooking',4 ,'food',250,'GIZA','mustafa mohamed');
INSERT INTO  eventss VALUES (30,'resala',5 ,'donation', 100,'GIZA','seif eldein');

INSERT INTO adminss VALUES (5,'hatem',26,'hatem123@yahoo.com','h123','talaatharb.st',2);
INSERT INTO adminss VALUES (6,'gaser',18,'gaser99@gmail.com','gs00','ahmedrateb.st',3);
INSERT INTO adminss VALUES (7,'omar',22,'omar21@gmail.com','7706S','abotaleb.st',2);

INSERT INTO userrs VALUES (15,'zyad','zoz3@gmail.com','zoz22','hassan.st',1,'student');
INSERT INTO userrs VALUES (16,'adam','adam445@gmail.com','adam2','saed.st',2,'student');
INSERT INTO userrs VALUES (16,'khaled','loda74@gmail.com','loda74','ebnObada.st',3,'lecturer');

INSERT INTO menuus VALUES (20,300,'salads',4,'chicken ceaser salad');
INSERT INTO menuus VALUES (30,450,'fish',5,'renga');
INSERT INTO menuus VALUES (40,220,'pasta',8,'white sauce pasta');

INSERT INTO specialofferss VALUES (1,'fashonista','fashionshow',50,2500);
INSERT INTO specialofferss VALUES (2,'stereo','foodoffer',20,3000);
INSERT INTO specialofferss VALUES (3,'helalahmar','clothes',50,200);

INSERT INTO registrations VALUES ('value','smartvillage',9900);
INSERT INTO registrations VALUES ('telecome','tahrir',20);
INSERT INTO registrations VALUES ('helalahmar','giza',500)

INSERT INTO budgets VALUES (2,'value',150,50,20,200);
INSERT INTO budgets VALUES (3,'telecome',1200,800,50,1000);
INSERT INTO budgets VALUES (4,'helalahmar',350,150,10,500);

INSERT INTO servicees VALUES (799,'cleaning');
INSERT INTO servicees VALUES (800,'event management');
INSERT INTO servicees VALUES (801,'website designer');




