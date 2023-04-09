-- What was the most purchased track of 2013?
SELECT T.Name, SUM(II.Quantity) AS TotalPurchases
FROM tracks AS T
	JOIN invoice_items AS II ON T.TrackId = II.TrackId
	JOIN invoices AS I ON II.InvoiceId = I.InvoiceId
WHERE I.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY T.TrackId
ORDER BY SUM(II.Quantity) DESC;
