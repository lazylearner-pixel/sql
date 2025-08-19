# find average shipping duration from orders_archive

select 
month(shipdate) as shipmonth,
avg(timestampdiff(day, orderdate, shipdate)) as shipduration
from salesdb.orders_archive 
group by shipmonth;

# now using orders

select 
month(orderdate) as orders,
month(shipdate) as shiping,
avg(timestampdiff( day , orderdate , shipdate)) as shipduration
from salesdb.orders
group by  orders, shiping;

