insert into person(`id`, `name`, `age`, `blood_type`, `year_of_birthday`, `month_of_birthday`, `day_of_birthday`) values (1, 'Martin', 10, 'A', 1991, 8, 15);
insert into person(`id`, `name`, `age`, `blood_type`, `year_of_birthday`, `month_of_birthday`, `day_of_birthday`) values (2, 'David', 9, 'B', 1992, 7, 21);
insert into person(`id`, `name`, `age`, `blood_type`, `year_of_birthday`, `month_of_birthday`, `day_of_birthday`) values (3, 'Dennis', 8, 'O', 1993, 10, 15);
insert into person(`id`, `name`, `age`, `blood_type`, `year_of_birthday`, `month_of_birthday`, `day_of_birthday`) values (4, 'Sophia', 7, 'AB', 1994, 8, 31);
insert into person(`id`, `name`, `age`, `blood_type`, `year_of_birthday`, `month_of_birthday`, `day_of_birthday`) values (5, 'Benny', 6, 'A', 1995, 12, 23);

insert into block(`id`, `name`) values (1, 'Dennis');
insert into block(`id`, `name`) values (2, 'Sophia');

update person set block_id = 1 where id = 3;
update person set block_id = 2 where id = 4;