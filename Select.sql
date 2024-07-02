-- Задание 2
--Название и продолжительность самого длительного трека.
SELECT Track_name, Duration 
    FROM Track 
    ORDER BY Duration DESC 
    LIMIT 1;
    
--Название треков, продолжительность которых не менее 3,5 минут.
SELECT Track_name, Duration
    FROM Track 
    WHERE Duration >=210;
    
   
--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT Collection_name, Year_of_release_album
    FROM Collection
    WHERE Year_of_release_album BETWEEN 2018 AND 2020;
   
--Исполнители, чьё имя состоит из одного слова.
SELECT Musician_name
    FROM Musician
    WHERE Musician_name NOT LIKE '%% %%';
   
--Название треков, которые содержат слово «мой» или «my»
SELECT track_name FROM track
	WHERE track_name LIKE '%%Мой%%';


--Задание 3
--Количество исполнителей в каждом жанре.
SELECT genre_name, COUNT(MusicianGenre.musician_id) AS CountMusician
    FROM Genre
    JOIN MusicianGenre ON Genre.id = MusicianGenre.genre_id
    GROUP BY genre_name;
   
--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT album_name, count(track.album_id) AS Count_of_track
   FROM album
   JOIN track ON album_id = track.album_id 
   WHERE album.year_of_release_album BETWEEN 2019 and 2020
   GROUP BY album_name
   ORDER BY Count_of_track DESC;
  
--Средняя продолжительность треков по каждому альбому.
SELECT album_name, AVG(Track.duration) 
    FROM Album
    JOIN Track ON Album.id = Track.album_id 
    GROUP BY album_name;
   
--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT Musician_name
	FROM musician
	LEFT JOIN AlbumMusician ON Musician_id = AlbumMusician.musician_id 
	LEFT JOIN album ON AlbumMusician.album_id = album_id 
	WHERE album.year_of_release_album < 2020
	GROUP by Musician_name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT collection_name FROM collection  
	JOIN trackcollection ON collection_id = trackcollection.collection_id 
	JOIN track ON trackcollection.track_id = track_id 
	JOIN albummusician ON track.album_id = albummusician.album_id 
	JOIN musician ON albummusician.musician_id = musician_id 
	WHERE musician_name = 'Баста';





    
