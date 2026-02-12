SELECT genres.Name AS Genre, COUNT(tracks.TrackId) AS SongCount
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
GROUP BY genres.Name

/*sort it*/
ORDER BY SongCount DESC;