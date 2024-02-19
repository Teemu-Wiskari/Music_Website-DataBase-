create table if not exists employee (
id_employee serial primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
department_name varchar(50) not null,
chief_id int,
foreign key (chief_id) references employee (id_employee) on delete cascade
);
