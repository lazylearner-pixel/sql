# using rank fuction to make a ranking of sales from highest to lowest in a perticular month

select 
orderid,
orderdate,
productid,
sales,
rank() over(order by sales desc) as sale_rank
from salesdb.orders ;