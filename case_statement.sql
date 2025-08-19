# leaning case statement
# preparing a report based on sales like how was the sales high, medium, low

select 
sum(sales),
case
	when sales > 50 then 'high'
    when sales > 20 then 'medium'
    else 'low'
end as sales_score
from salesdb.orders 
group by  sales_score;


# show the gender as full text in employees table at salesdb

select 
employeeid,
concat(firstname, ' ', coalesce(lastname, '')) as emp_name,
department,
birthdate,
case gender
	when 'M' then 'male'
    when'F' then 'female'
    else 'chhakka'
end as gender_in_text,
salary,
ifnull(managerid, 'unknown')
from salesdb.employees
order by salary desc;

