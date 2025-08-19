select 
orderid,
productid,
sales,
sum(sales) over() as total_sales,
round((cast(sales as float)/ sum(sales) over() *100), 2) as sales_contribution
from salesdb.orders ;