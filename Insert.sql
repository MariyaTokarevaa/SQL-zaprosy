 INSERT INTO Genre(genre_name) 
	VALUES ('Рок'), ('Поп'), ('Джаз'),('Классика'), ('Рэп');

INSERT INTO Musician(musician_name) 
	VALUES ('Виктор Цой'), ('Алла Пугачева'), ('Диана Кралл'), ('Людвиг ван Бетховен'), ('Баста');

INSERT INTO MusicianGenre(Genre_id, Musician_id)
    VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5,5);
    
INSERT INTO Album(Album_name, Year_of_release_album)
    VALUES ('Группа крови', 1988), ('Зеркало души', 1978), ('The Look of Love', 2001), ('Симфония № 9', 1824), ('Баста 1', 2006);

INSERT INTO AlbumMusician(Musician_id, Album_id)
    VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5);
   
INSERT INTO Track(Track_name, Duration, Album_id)
    VALUES ('Кукушка', 397, 1), ('Закрой за мной дверь, я ухожу', 257, 1), ('Мой друг', 355, 2), ('Женщина, которая поёт', 253, 2), ('The Look of Love', 281, 3), ('Ода к радости', 1064, 4), ('Моя игра', 268, 5);

INSERT INTO Collection(Collection_name, Year_of_release_album)
    VALUES ('Лучшие хиты', 2020), ('Золотая коллекция', 2021), ('Джазовые стандарты', 2022), ('Классика для всех', 2023);
   
INSERT INTO TrackCollection(Track_id, Collection_id)
    VALUES (1, 1), (2, 1), (3, 2), (4, 2), (5, 3), (6, 4);
