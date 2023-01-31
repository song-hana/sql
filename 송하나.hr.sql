drop user hr2 cascade;

create user hr2 identified by hr2 default tablespace users;
grant connect, resource to hr2;

create table hr2.laborers(
    laborer_id number(2),
    laborer_name varchar2(12),
    hire_date date);
    
alter table hr2.laborers
    add constraint laborer_laborerid_pk primary key(laborer_id);

drop sequence laborer_laborerid_seq;

create sequence laborer_laborerid_seq;