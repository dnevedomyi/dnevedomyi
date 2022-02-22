--1.Создать таблицу employees
create table employees_4 (
id serial primary key,
employee_name Varchar(50) unique not null
);

select*from employees_4;

--2.Наполнить таблицу employees 70 строками.
insert into employees_4 (employee_name)
values  ('Ivanov A.'),
		('Ivanov B.'),
		('Ivanov C.'),
		('Ivanov D.'),
		('Ivanov E.'),
		('Ivanov F.'),
		('Ivanov G.'),
		('Ivanov H.'),
		('Ivanov I.'),
		('Ivanov J.'),
		('Ivanov K.'),
		('Ivanov L.'),
		('Ivanov M.'),
		('Ivanov N.'),
		('Ivanov O.'),
		('Ivanov P.'),
		('Ivanov Q.'),
		('Ivanov R.'),
		('Ivanov S.'),
		('Ivanov T.'),
		('Ivanov U.'),
		('Ivanov V.'),
		('Ivanov W.'),
		('Ivanov X.'),
		('Ivanov Y.'),
		('Ivanov Z.'),
		('Ivanov AA.'),
		('Ivanov AB.'),
		('Ivanov AC.'),
		('Ivanov AD.'),
		('Ivanov AE.'),
		('Ivanov AF.'),
		('Ivanov GG.'),
		('Ivanov AH.'),
		('Ivanov AI.'),
		('Ivanov AG.'),
		('Ivanov AK.'),
		('Ivanov AL.'),
		('Ivanov AM.'),
		('Ivanov AN.'),
		('Ivanov AO.'),
		('Ivanov AP.'),
		('Ivanov AQ.'),
		('Ivanov AR.'),
		('Ivanov AS.'),
		('Ivanov AT.'),
		('Ivanov AU.'),
		('Ivanov AV.'),
		('Ivanov AW.'),
		('Ivanov AX.'),
		('Ivanov AY.'),
		('Ivanov AZ.'),
		('Petrov A.'),
		('Sidorov A.'),
		('Wetrov A.'),
		('Ivanova A.'),
		('Petrova A.'),
		('Sidorova A.'),
		('Vetrova A.'),
		('Novikova A.'),
		('Novikov A.'),
		('Vasilyeva A.'),
		('Martynenko A.'),
		('Tkachenko A.'),
		('Golovanov V.'),
		('Kriga A.'),
		('Mikhalutsa I.'),
		('Markov N.'),
		('Nedelkin M.'),
		('Dimitrova O.');

	--3.Создать таблицу salary
create table salary_1 (
id serial primary key,
monthly_salary int not null
);	

select * from salary_1  
	
---4.Наполнить таблицу salary 15 строками:
insert into salary_1 (id, monthly_salary)
values (default, 1000),
	   (default, 1100),
	   (default, 1200),
	   (default, 1300),
	   (default, 1400),
	   (default, 1500),
	   (default, 1600),
	   (default, 1700),
	   (default, 1800),
	   (default, 1900),
	   (default, 2000),
	   (default, 2100),
	   (default, 2200),
	   (default, 2300),
	   (default, 2400);
	
---5.Создать таблицу employee_salary
	  
create table employee_salary_5 (
id serial primary key,
employee_id int not null unique, 
salary_id int not null,
foreign key (employee_id)
	references employees_4(id),
foreign key (salary_id)
	references salary_1(id)
);	 

select * from employee_salary_5;

---6.Наполнить таблицу employee_salary 40 строками

insert into employee_salary_5 (id, employee_id, salary_id)
values (default, 3, 7),
	   (default, 1, 4),
	   (default, 5, 9),
	   (default, 40, 13),
	   (default, 56, 4),
	   (default, 11, 2),
	   (default, 52, 10),
	   (default, 16, 13),
	   (default, 61, 4),
	   (default, 44, 1),
	   (default, 33, 7),
	   (default, 35, 3),
	   (default, 37, 6),
	   (default, 2, 8),
	   (default, 4, 10),
	   (default, 6, 11),
	   (default, 7, 12),
	   (default, 8, 14),
	   (default, 9, 15),
	   (default, 10, 1),
	   (default, 12, 9),
	   (default, 13, 8),
	   (default, 29, 7),
	   (default, 47, 11),
	   (default, 32, 12),
	   (default, 27, 15),
	   (default, 39, 15),
	   (default, 14, 15),
	   (default, 15, 1),
	   (default, 17, 5),
	   (default, 20, 4),
	   (default, 21, 3),
	   (default, 22, 1),
	   (default, 23, 1),
	   (default, 24, 7),
	   (default, 25, 5),
	   (default, 26, 12),
	   (default, 41, 8),
	   (default, 45, 9),
	   (default, 64, 1);
	  
--7. Создать таблицу roles
create table roles_1(
id serial primary key,
role_name int not null unique 
);		  
select	* from roles_1;
--8.Поменять тип столба role_name с int на varchar(30)
alter table roles_1
alter column role_name type varchar(30) using role_name :: varchar(30);

--9.Наполнить таблицу roles 20 строками:
insert into roles_1 (role_name)
values ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');

--10.Создать таблицу roles_employee
create table roles_employee_1 (
id serial primary key,
employee_id int not null unique, 
role_id int not null,
foreign key (employee_id)
	references employees_4(id),
foreign key (role_id)
	references roles_1(id)
);

select * from roles_employee_1 

insert into roles_employee_1 (id, employee_id, role_id)
values (default, 3, 7),
	   (default, 1, 4),
	   (default, 5, 9),
	   (default, 6, 13),
	   (default, 7, 4),
	   (default, 9, 2),
	   (default, 50, 10),
	   (default, 60, 13),
	   (default, 2, 4),
	   (default, 4, 1),
	   (default, 8, 7),
	   (default, 35, 3),
	   (default, 24, 6),
	   (default, 65, 8),
	   (default, 22, 10),
	   (default, 62, 11),
	   (default, 37, 12),
	   (default, 48, 14),
	   (default, 59, 15),
	   (default, 10, 1),
	   (default, 12, 9),
	   (default, 13, 8),
	   (default, 29, 7),
	   (default, 47, 11),
	   (default, 32, 12),
	   (default, 27, 20),
	   (default, 39, 15),
	   (default, 14, 20),
	   (default, 15, 10),
	   (default, 17, 15),
	   (default, 20, 14),
	   (default, 21, 3),
	   (default, 51, 1),
	   (default, 23, 1),
	   (default, 69, 7),
	   (default, 25, 5),
	   (default, 26, 18),
	   (default, 41, 8),
	   (default, 45, 19),
	   (default, 70, 1);



