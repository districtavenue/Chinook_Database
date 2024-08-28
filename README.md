# DESCRIPTION

I have copied below my SQL queries to demonstrate my competence. I am using an open-source database called Chinook, whichis modeled as a media store containing tables like Album, Artist,
and business transactions such as Invoices and Customers. This open-source database that I have downloaded on github. ( link attached). this would shouwcase how i can interact with real busines scenario cases, this would involve to
manage actual sales numbers and demonstrate how I can analyze and produce some valuable insight for the company. 


### Tools
I am using PostgreSQL to solve the questions from this database. Throught this project, i will use basic and intermediate level like join, aggregate function, wildcard and more. There are 27 questions but i have picked 15 of them cause some are not 
matching (ne corresponds pas ) with the database. 


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
23.Provide a query that shows the total sales per country. Which country's customers spent the most?
24.Provide a query that shows the most purchased track of 2013.
25.Provide a query that shows the top 5 most purchased tracks over all.
26.Provide a query that shows the top 3 best selling artists.




### Data Analysis 
Here below SQL queries I have entered to resolve questions on top. Please find sql file attached. 

``` SQL

#1.

select CONCAT(first_name, ' ', last_name) AS Customer_name, customer_id, country
FROM
Customer 

WHERE NOT country ='USA';

```


