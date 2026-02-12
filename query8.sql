SELECT genres.Name AS Genre, SUM(tracks.Milliseconds) AS GenreLength
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
GROUP BY genres.Name

/*sort it*/
ORDER BY GenreLength DESC;