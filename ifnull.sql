# using ifull statement to replace the 

select 
shipaddress,
ifnull(shipaddress , 'unknown'),
coalesce(shipaddress , 'unknown') 
from salesdb.orders ;