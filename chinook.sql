---1.

select CONCAT(first_name, ' ', last_name) AS Customer_name, customer_id, country
FROM
Customer 

WHERE NOT country ='USA';


---2.

select last_name, country

from 
	customer
    
where 
	country LIKE '%Brazil%';


---3. Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

select CONCAT(c.first_name, ' ', c.last_name) AS Customer_name, i.invoice_id,i.invoice_date,i.billing_country


from 
    invoice i

JOIN 
    customer c on c.customer_id=i.invoice_id

WHERE
    c.country LIKE '%Brazil%';



---4. Provide a query showing only the Employees who are Sales Agents.


select CONCAT(first_name, ' ',last_name) AS Customer_name, title

from 
    employee;



---5. Provide a query showing a unique list of billing countries from the Invoice table.

select billing_country
from 
    invoice;



---6. Provide a query showing the invoices of customers who are from Brazil.

select * from invoice;
    


select COUNT(customer_id), billing_country

from
	invoice
    
WHERE 
	billing_country LIKE '%Brazil%'

GROUP BY
	customer_id,billing_country;





---6. Provide a query showing the invoices of customers who are from Brazil.

select SUM(customer_id) as Total, billing_country

from
	invoice
    
WHERE 
	billing_country LIKE '%Brazil%'

GROUP BY
	Total,billing_country




---7. Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.


CONCAT(first_name, ' ', last_name) AS Sale_Agent_Name

select i.invoice_id, CONCAT(first_name, ' ', last_name) AS Sale_Agent_Name, e.title

from
	employee e 

LEFT JOIN invoice i on e.employee_id=i.invoice_id;



---8. Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

select i.invoice_id, CONCAT(e.first_name, ' ', e.last_name) AS Sale_Agent_Name, e.title, 

CONCAT(c.first_name, ' ', c.last_name) AS Customer_Name,sum(i.total)


from
	employee e 

LEFT JOIN invoice i on e.employee_id=i.invoice_id
LEFT JOIN customer c on c.customer_id=i.invoice_id


---9. How many Invoices were there in 2022 and 2021? What are the respective total sales for each of those years?

select *from invoice;

select count(invoice_id)

from
	invoice
    
where invoice_date between '2021-01-01 00:00:00+00' and '2021-12-26 00:00:00+00';




---18. Provide a query that shows total sales made by each sales agent.

select e.title,sum(i.total) as Total_Sales


FROM 
	employee e

JOIN
	invoice i on employee_id=invoice_id


GROUP BY

	e.title;
