select 
# counting number of orders
count(order_id),
# tatal sales
sum(sales) as total_sales,
# finding average sales
avg(sales) as avg_sales,
# finding highest sales order among sales
max(sales) as highest_sale,
# lowest among all
min(sales) as lowest_sales
from orders ;