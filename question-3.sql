-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT II.*, T.Name, AR.Name
FROM invoice_items AS II
	JOIN tracks as T ON II.TrackId = T.TrackId
	JOIN albums AS A ON T.AlbumId = A.AlbumId
	JOIN artists AS AR ON A.ArtistId = AR.ArtistId;
