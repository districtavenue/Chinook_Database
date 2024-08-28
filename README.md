# DESCRIPTION

I have provided my SQL queries below to demonstrate my competence. I am using an open-source database called Chinook, which is modeled after a media store. This database contains tables such as `Album`, `Artist`, and business transactions like `Invoice` and `Customer`. 

I downloaded this open-source database from GitHub (link attached). This showcase demonstrates how I can interact with real business scenarios, manage actual sales data, and produce valuable insights for the company.

[Attached File here](https://github.com/lerocha/chinook-database/tree/master)

### Tools
I am using PostgreSQL to solve the questions from this database. Throughout this project, I will use basic and intermediate levels like Joins, Aggregate function, wildcard,s and more.
There are 27 questions in total, but I have selected 15 of them, as some do not correspond to the database (example **dates**)


### QUESTIONS FOR THIS PROJECT 

1. Provide a query showing Customers (just their full names, customer ID, and country) who are not in the US.
2. Provide a query only showing the Customers from Brazil.
3. Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
4. Provide a query showing only the Employees who are Sales Agents.
5. Provide a query showing a unique list of billing countries from the Invoice table.
6. Provide a query showing the invoices of customers who are from Brazil.
7. Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
8. Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
9. How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
17. Provide a query that shows all Invoices but includes the # of invoice line items.
18. Provide a query that shows total sales made by each sales agent.
19. Which sales agent made the most in sales in 2009?
20. Which sales agent made the most in sales in 2010?
21. Which sales agent made the most in sales over all?
22. Provide a query that shows the # of customers assigned to each sales agent.
23. Provide a query that shows the total sales per country. Which country's customers spent the most?
24. Provide a query that shows the most purchased track of 2013.
25. Provide a query that shows the top 5 most purchased tracks over all.
26. Provide a query that shows the top 3 best selling artists.




### Data Analysis 
Here below SQL queries I have entered to resolve questions on top. Please find sql file attached. 

``` SQL

#1.

select CONCAT(first_name, ' ', last_name) AS Customer_name, customer_id, country
FROM
Customer 

WHERE NOT country ='USA';

```


