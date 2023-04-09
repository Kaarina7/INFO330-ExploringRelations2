-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT C.FirstName, C.LastName, I.InvoiceID, I.InvoiceDate, I.BillingCountry
FROM customers AS C
	JOIN invoices as I ON C.CustomerId = I.CustomerId
WHERE C.Country = 'Brazil';
