# DESCRIPTION

I have copied below my SQL queries to demonstrate my competence. I am using an open-source database called Chinook, which is modeled as a media store containing tables like Album, Artist,
and business transactions such as Invoices and Customers. This open-source database, designed for SQL practice to showcase skill levels, was downloaded from GitHub as proof of competence."


### Tools
I am using PostgreSQL to solve the questions from this database. 


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
10. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
11. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)
12. Provide a query that includes the track name with each invoice line item.
13. Provide a query that includes the purchased track name AND artist name with each invoice line item.
14. Provide a query that shows the # of invoices per country. HINT: [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)
15. Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.
16. Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.
17. Provide a query that shows all Invoices but includes the # of invoice line items.
18. Provide a query that shows total sales made by each sales agent.


### Data Analysis 
Here below SQL queries I have entered to resolve questions on top. Please find sql file attached. 

``` SQL

#1.

select CONCAT(first_name, ' ', last_name) AS Customer_name, customer_id, country
FROM
Customer 

WHERE NOT country ='USA';

```


