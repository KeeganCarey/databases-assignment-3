/*distinct so customers that have multiple songs over the time limit wont appear twice*/
SELECT DISTINCT customers.FirstName, customers.LastName
FROM customers
/*merge to invoices and then the invoice items 
because it contains the trackid we are lookign for*/
JOIN invoices ON customers.CustomerId = invoices.CustomerId
JOIN invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
/*900000 is 15 min in milliseconds*/
WHERE tracks.Milliseconds < 900000 AND tracks.Milliseconds > (SELECT AVG(Milliseconds) FROM tracks);