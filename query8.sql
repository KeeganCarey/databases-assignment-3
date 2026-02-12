SELECT tracks.Name, tracks.Composer, tracks.Milliseconds
FROM tracks

/*make the condition be for it to NOT be in the table of
the top 5 longest genres in total*/ 
WHERE GenreId NOT IN (
    SELECT genres.GenreId
    FROM genres
    JOIN tracks ON genres.GenreId = tracks.GenreId
    GROUP BY genres.GenreId
    ORDER BY SUM(tracks.Milliseconds) DESC
    LIMIT 5
)
/*i wanted to sort it alphabetically */
ORDER BY tracks.Name;
