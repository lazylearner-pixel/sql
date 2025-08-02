# country's average score exclude the customers wtih 0

select 
	country,
    avg(score) as avg_score
from customers 
where score != 0
group by country
having avg_score > 450;