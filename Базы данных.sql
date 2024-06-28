-- Создание таблицы Жанры
CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	Genre_name VARCHAR(100) NOT NULL
	);

-- Создание таблицы Исполнители
CREATE TABLE IF NOT EXISTS Musician (
	id SERIAL PRIMARY KEY,
	Musician_name VARCHAR(100) NOT NULL
);

-- Создание таблицы ИсполнителиЖанры
CREATE TABLE IF NOT EXISTS MusicianGenre (
	id SERIAL PRIMARY KEY,
	Genre_id INTEGER NOT NULL REFERENCES Genre(id),
	Musician_id INTEGER NOT NULL REFERENCES Musician(id)
);

-- Создание таблицы Альбомы
CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	Album_name VARCHAR(100) NOT NULL,
	Year_of_release_album INTEGER NOT NULL
);

-- Создание таблицы АльбомыИсполнители
CREATE TABLE IF NOT EXISTS AlbumMusician (
	id SERIAL PRIMARY KEY,
	Musician_id INTEGER NOT NULL REFERENCES Musician(id),
	Album_id INTEGER NOT NULL REFERENCES Album(id)
);

-- Создание таблицы Треки
CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	Track_name VARCHAR(100) NOT NULL,
	Duration INTEGER NOT NULL,
	Album_id INTEGER NOT NULL REFERENCES Album(id)
);

-- Создание таблицы Сборники
CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	Collection_name VARCHAR(100) NOT NULL,
	Year_of_release_album INTEGER NOT NULL
);

-- Создание таблицы ТрекиСборники
CREATE TABLE IF NOT EXISTS TrackCollection (
	id SERIAL PRIMARY KEY,
	Track_id INTEGER NOT NULL REFERENCES Track(id),
	Collection_id INTEGER NOT NULL REFERENCES Collection(id)
);