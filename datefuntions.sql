# how many orders were placed in each year

select 
date_format(creationtime, '%Y-01-01') as creation,
count(*)
from salesdb.orders
group by creation ;

#using year command
select 
year(creationtime) as creation,
count(creationtime) as numodorders
from salesdb.orders
group by creation ;


# find how many orders are done in each month

select 
date_format(creationtime, '%Y-%m-01') as datemonth,
count(date_format(creationtime, '%Y-%m-01'))
from salesdb.orders
group by date_format(creationtime, '%Y-%m-01') ;

select 
date_format(creationtime, '%M'),
count(*)
from salesdb.orders
where date_format(creationtime, '%M') = 'February'
group by date_format(creationtime, '%M') ;