UPDATE Favorite
	SET SongID = '1', GenreID = '14', 
	ArtistID = '1', AlbumID = '1', 
	UpdatedAt = CURRENT_TIMESTAMP
	WHERE FavoriteID = '1';

UPDATE Favorite
	SET SongID = '14', GenreID = '12', 
	ArtistID = '2', AlbumID = '2', 
	UpdatedAt = CURRENT_TIMESTAMP
	WHERE FavoriteID = '3';

UPDATE Favorite
	SET SongID = '18', GenreID = '12', 
	ArtistID = '3', AlbumID = '3', 
	UpdatedAt = CURRENT_TIMESTAMP
	WHERE FavoriteID = '5';

UPDATE Favorite
	SET SongID = '22', GenreID = '14', 
	ArtistID = '4', AlbumID = '4', 
	UpdatedAt = CURRENT_TIMESTAMP
	WHERE FavoriteID = '7';

UPDATE Favorite
	SET SongID = '26', GenreID = '2', 
	ArtistID = '5', AlbumID = '5', 
	UpdatedAt = CURRENT_TIMESTAMP
	WHERE FavoriteID = '9';

UPDATE Favorite
	SET SongID = '31', GenreID = '8', 
	ArtistID = '6', AlbumID = '6', 
	UpdatedAt = CURRENT_TIMESTAMP
	WHERE FavoriteID = '10';

UPDATE Favorite
	SET SongID = '35', GenreID = '6', 
	ArtistID = '7', AlbumID = '7', 
	UpdatedAt = CURRENT_TIMESTAMP
	WHERE FavoriteID = '11';
	
SELECT
	User.FirstName,User.LastName,
	songs.name,genres.name,artists.name,albums.name
	FROM User 
	INNER JOIN Favorite ON User.UserID = Favorite.UserID
	INNER JOIN albums ON Favorite.AlbumID = albums.id
	INNER JOIN songs ON albums.id = songs.album_id
	INNER JOIN artists ON albums.artist_id = artists.id
	INNER JOIN genres ON albums.genre_id = genres.id
	GROUP BY User.FirstName
	ORDER BY User.UserID;

SELECT 
	albums.name as Album,
	SUM(songs.length) as Minutes
	FROM songs INNER JOIN albums ON songs.album_id = albums.id
	GROUP BY Album
	HAVING (Minutes > 5);
	
	

	