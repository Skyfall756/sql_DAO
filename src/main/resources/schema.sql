create schema hw2;

create table hw2.customers
(
    id           int auto_increment primary key,
    name         varchar(255) not null,
    surname      varchar(255) not null,
    age          int          not null,
    phone_number varchar(255) not null
);

insert into hw2.customers (name, surname, age, phone_number)
values ('Alexey', 'Frolov', 27, '89990007766');

insert into hw2.customers (name, surname, age, phone_number)
values ('Ivan', 'Ivanov', 41, '89876543322');

insert into hw2.customers (name, surname, age, phone_number)
values ('alEXey', 'Petrov', 20, '89877899876');

insert into hw2.customers (name, surname, age, phone_number)
values ('Anna', 'Kruglova', 27, '89000001122');


create table hw2.orders
(
    id           int auto_increment primary key,
    date         datetime not null,
    customer_id  int          not null,
    product_name varchar(255) not null,
    amount       decimal      not null,
    foreign key (customer_id) references hw2.customers (id)
);

insert into hw2.orders (date, customer_id, product_name, amount)
values ('22.06.12 12:24', 1, 'Milk', 88);

insert into hw2.orders (date, customer_id, product_name, amount)
values ('21.07.12 22:54', 2, 'Apple', 20);

insert into hw2.orders (date, customer_id, product_name, amount)
values ('10.01.15 18:43', 3, 'Orange', 46);

insert into hw2.orders (date, customer_id, product_name, amount)
values ('22.06.12 12:24', 1, 'Water', 10);