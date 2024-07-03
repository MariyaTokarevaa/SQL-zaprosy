--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.

SELECT DISTINCT Album_name
FROM Album
JOIN AlbumMusician ON Album.id = AlbumMusician.Album_id
JOIN MusicianGenre ON AlbumMusician.musician_id = MusicianGenre.Musician_id
GROUP BY Album_name 
HAVING COUNT(DISTINCT MusicianGenre.Genre_id) > 1;

--Наименования треков, которые не входят в сборники.
SELECT Track_name
FROM Track
LEFT JOIN TrackCollection ON Track.id = TrackCollection.track_id 
WHERE TrackCollection.Track_id IS NULL;

-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек
SELECT Musician_name
FROM Musician
WHERE id = (
    SELECT Musician_id
    FROM AlbumMusician
    WHERE Album_id = (
        SELECT Album_id
        FROM Track
        ORDER BY Duration ASC
        LIMIT 1
    )
);

--Названия альбомов, содержащих наименьшее количество треков.
SELECT Album_name
FROM Album
WHERE Album.id IN (
    SELECT Album_id
    FROM Track
    GROUP BY Album_id
    HAVING COUNT(Track.id) = (
        SELECT MIN(Track_count)
        FROM (
            SELECT Album_id, COUNT(Track.id) AS Track_count
            FROM Track
            GROUP BY Album_id
        ) AS AlbumTrackCount
    )
);
