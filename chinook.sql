#1.
select CONCAT(first_name, ' ', last_name) AS Customer_name, customer_id, country
FROM
Customer 

WHERE NOT country ='USA';

#2.

Select * from customer
Where Country LIKE=’Brazil’;


#4.
select *from employee

Where title LIKE=%Sales Support Agent%;

#5. 

Select billing_country
From invoice;
	


#6. Provide a query showing the invoices of customers who are from Brazil.

Select
billing_country,
COUNT(customer_id) as Customer_Brazil
From
invoice

Group by 
billing_country;


7. Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.


#9 

select
    invoice_date, sum(invoice_id), sum(total) as Total_of_sales,
From 
	invoice
Where invoice_date BEWEEN '2020-01-01'and '2022-01-01'

ORDER BY 
	invoice_date DESC

GROUP BY 
    invoice_date;

#19. Which sales agent made the most in sales in 2020?




#18. Provide a query that shows total sales made by each sales agent.

select 

	e.employee_id,e.title,sum(i.total) as Sales_by_agent

from 
employee e 
LEFT JOIN	
    invoice i on   
    e.employee_id=i.invoice_id
GROUP BY 
	e.title,e.employee_id    
ORDER BY
	Sales_by_agent;

With their full name we need subqueries with joins.


#19.

select 
	e.employee_id,e.title,sum(i.total) as Sales_by_agent
from 
	employee e 
LEFT JOIN	
    invoice i on   
    e.employee_id=i.invoice_id
WHERE 
	invoice_date BETWEEN '2021-01-01T00:00:00.000Z’ AND 
‘2021-12-26T00:00:00.000Z'

GROUP BY 
	e.title,e.employee_id;



#20.


select e.title,CONCAT(c.first_name, ' ', c.last_name) AS Customer_name

from 
	employee e 

LEFT JOIN 
	customer c on e.employee_id=c.customer_id;
