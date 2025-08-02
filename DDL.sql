select * from persons ;


# add new column email in the table

alter table persons
add email varchar(50) not null;

alter table persons
drop email ;

# deleting persons from database

drop table persons ;
