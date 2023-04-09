-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT T.TrackId, T.Name, T.Composer
FROM tracks AS T
	JOIN invoice_items AS II ON T.TrackId = II.TrackId
