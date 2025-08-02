#find the aggregate score from each country

select
	country,
    sum(score) as aggregate_score
from customers 
group by country
order by aggregate_score;