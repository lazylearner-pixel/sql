select 
employeeid,
concat(firstname, ' ', lastname) as employee_name,
birthdate,
datediff(now(), birthdate) as days_age,
timestampdiff(year , birthdate, now()) as age 
from salesdb.employees ;