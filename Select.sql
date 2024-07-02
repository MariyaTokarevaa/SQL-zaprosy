SELECT Track_name, Duration 
    FROM Track 
    ORDER BY Duration DESC 
    LIMIT 1;
    
SELECT Track_name, Duration
    FROM Track 
    WHERE Duration >=210;
    
SELECT Collection_name, Year_of_release_album
    FROM Collection
    WHERE Year_of_release_album BETWEEN 2018 AND 2020;
   
SELECT Musician_name
    FROM Musician
    WHERE Musician_name NOT LIKE '%% %%';
   
SELECT track_name FROM track
	WHERE track_name LIKE '%%Мой%%'
;


    