-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT T.TrackId, T.Name, T.Composer
FROM tracks AS T
WHERE T.TrackID NOT IN (SELECT T.TrackId
						FROM tracks AS T
						JOIN invoice_items AS II ON T.TrackId = II.TrackId);
