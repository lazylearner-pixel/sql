#using lag funstion to find the number of days between two orderdates


select 
orderid,
orderdate,
lag(orderdate) over (order by orderdate) as previous_orderdate,
datediff(orderdate ,lag(orderdate) over (order by orderdate) ),
timestampdiff( day , lag(orderdate) over (order by orderdate) , orderdate)
from salesdb.orders ;
