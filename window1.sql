# using aggregation provide the total sales for each of the product with productid, orderdate

select 
orderid,
productid,
sales,
orderstatus,
sum(sales) over() total_sales,
sum(sales) over(partition by productid ) as total_sales_by_product,
sum(sales) over(partition by productid, orderstatus) sales_status
from salesdb.orders ;