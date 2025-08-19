select 
orderid,
productid,
count(*) over () as num_of_sales
from salesdb.orders ;


select 
orderid,
productid,
customerid,
count(*) over() as total_orders,
count(*) over(partition by customerid) as customers_tot_order 
from salesdb.orders ;