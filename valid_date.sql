# check wether a date is valid or not

select
orderid,
orderdate,
str_to_date(orderdate, '%Y-%m-%d') is not null as validdate
from salesdb.orders ;

