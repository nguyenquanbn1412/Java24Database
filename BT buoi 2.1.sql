create table Product (product_id int primary key AUTO_INCREMENT, product_name varchar(255), price double, quantity int);

INSERT into product (product_name, price, quantity)  values('Loa bluetooth', 200000, 55);
insert into product (product_name, price, quantity)  values('TV', 1234500, 12);
insert into product (product_name, price, quantity)  values('Laptop', 12313.44, 32);
insert into product (product_name, price, quantity)  values('Ban phim', 234.324, 12);
insert into product (product_name, price, quantity)  values('Chuot', 6546.2323, 11);
insert into product (product_name, price, quantity)  values('Dien tthoai', 32423.3425, 62);
insert into product (product_name, price, quantity)  values('Balo', 423423.345, 7);
insert into product (product_name, price, quantity)  values('Quan ao', 2342.435, 90);
insert into product (product_name, price, quantity)  values('O to', 23423.234, 16);
insert into product (product_name, price, quantity)  values('Xe may', 234154.23, 72);
insert into product (product_name, price, quantity) values('Xe dap dien', 346000.23, 72);

alter table product add column description varchar(255);
update product set price = 99 where product_id = 1;
update product set price = price + price * 0.1 where product_id = 2;

######################### 

update attendance_db.person set fullname = 'John Doe' where id = 10;
update attendance_db.person set country = 'Canada' where id = 3;
update attendance_db.person set birthday = '1990-05-15', country = 'Canada' where id = 7;
update attendance_db.person set salary = salary + salary * 0.1 where id = 40;
update attendance_db.person set salary = salary - salary * 0.15 where salary > 6000;

