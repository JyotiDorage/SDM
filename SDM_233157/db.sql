create table employee(emp_id int primary key,ename varchar(20),email varchar(20),phone text);

create table project(pro_id int primary key,pro_name varchar(20),manager_id int,start_date date,end_date date,
		constraint fk_mng foreign key(manager_id) references manager(mng_id));

create table manager(mng_id int primary key,mng_name varchar(20),project_id int,
                constraint fk_mid foreign key(mng_id) references employee(emp_id),
                constraint fk_mname foreign key(mng_name) references employee(ename)
		constraint fk_pid foreign key(project_id) references project(pro_id));

create table delievery_manager(prj_id int,delivery_date date,
                constraint fk_pid foreign key(prj_id) references project(pro_id),
                constraint fk_pdate foreign key(delivery_date) references project(end_date)
		constraint fk_pid foreign key(project_id) references project(pro_id));

create table stakehodler(project_id int,del_id date,
                constraint fk_did foreign key(del_id) references delievery(end_date),
		constraint fk_prid foreign key(project_id) references project(pro_id));



