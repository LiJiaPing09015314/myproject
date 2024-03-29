SET NAMES UTF8;
DROP DATABASE IF EXISTS huimaiche;
CREATE DATABASE huimaiche CHARSET=UTF8;
USE huimaiche;
CREATE TABLE car_type(
 tid INT PRIMARY KEY AUTO_INCREMENT,
 tname VARCHAR(50)
);
INSERT INTO car_type VALUES(null,"lt8");
INSERT INTO car_type VALUES(null,"lt15");
INSERT INTO car_type VALUES(null,"lt30");
INSERT INTO car_type VALUES(null,"suv");

CREATE TABLE car(
 cid INT PRIMARY KEY AUTO_INCREMENT,
 cname VARCHAR(20),
 price DOUBLE(10,2),
 pic   VARCHAR(20),
 tid   INT
);
INSERT INTO car VALUES(null,'奥拓',79000,'8_1.jpg',1);
INSERT INTO car VALUES(null,'奥拓',78000,'8_2.jpg',1);
INSERT INTO car VALUES(null,'奥拓',77000,'8_3.jpg',1);
INSERT INTO car VALUES(null,'玛莎拉蒂',149000,'15_1.jpg',2);
INSERT INTO car VALUES(null,'玛莎拉蒂',148000,'15_2.jpg',2);
INSERT INTO car VALUES(null,'玛莎拉蒂',147000,'15_3.jpg',2);
INSERT INTO car VALUES(null,'一汽大众',279000,'30_1.jpg',3);
INSERT INTO car VALUES(null,'一汽大众',278000,'30_2.jpg',3);
INSERT INTO car VALUES(null,'一汽大众',277000,'30_3.jpg',3);
INSERT INTO car VALUES(null,'suv1',379000,'suv_1.jpg',4);
INSERT INTO car VALUES(null,'suv2',378000,'suv_2.jpg',4);
INSERT INTO car VALUES(null,'suv3',377000,'suv_3.jpg',4);