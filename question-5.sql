-- What was the most purchased track of 2013?
SELECT T.Name, COUNT(*) AS TotalPurchases
FROM tracks AS T
	JOIN invoice_items AS II ON T.TrackId = II.TrackId
	JOIN invoices AS I ON II.InvoiceId = I.InvoiceId
WHERE I.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
AND T.Name = 'Fear Of The Dark'
GROUP BY T.TrackId
ORDER BY COUNT(*);
