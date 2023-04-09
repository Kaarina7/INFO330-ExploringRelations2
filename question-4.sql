-- Which sales agent made the most in sales in 2010?
SELECT E.FirstName, E.LastName, SUM(I.Total) AS TotalSale
FROM employees AS E
	JOIN customers AS C ON E.EmployeeId = C.SupportRepId
	JOIN invoices AS I ON C.CustomerId = I.CustomerId
WHERE E.Title = 'Sales Support Agent'
AND I.InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY E.EmployeeId
ORDER BY SUM(I.Total) DESC
LIMIT 1;
