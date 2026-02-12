SELECT customers.FirstName, customers.LastName, tracks.Milliseconds
FROM customers
JOIN invoices ON customers.CustomerId = invoices.CustomerId
JOIN invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
WHERE tracks.Milliseconds < 900000 AND tracks.Milliseconds > (SELECT AVG(Milliseconds) FROM tracks);