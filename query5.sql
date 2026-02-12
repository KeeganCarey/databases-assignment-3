/*
This one will display Album titles and the artist name that wrote the album 
(itll also have the ids)
*/
SELECT albums.AlbumId, artists.ArtistId, albums.Title, artists.Name
FROM albums
INNER JOIN artists ON albums.ArtistId=artists.ArtistId;