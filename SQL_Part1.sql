CREATE TABLE User
(
	UserID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
	FirstName VARCHAR NOT NULL,
	LastName VARCHAR NOT NULL,
	Birthplace VARCHAR NOT NULL,
	CreatedAt DATETIME NOT NULL,
	UpdatedAt DATETIME NULL
);

CREATE TABLE Favorite 
(
	FavoriteID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
	UserID INTEGER NOT NULL,
	ArtistID INTEGER, 
	AlbumID INTEGER,
	SongID INTEGER,
	GenreID INTEGER,
	CreatedAt DATETIME NOT NULL,
	UpdatedAt DATETIME NULL,
	FOREIGN KEY (UserID) REFERENCES User (UserID),
	FOREIGN KEY (ArtistID) REFERENCES artists (id),
	FOREIGN KEY (AlbumID) REFERENCES albums (id),
	FOREIGN KEY (SongID) REFERENCES songs (id),
	FOREIGN KEY (GenreID) REFERENCES genres (id)
);

SELECT * from albums;

SELECT id, name from albums;

SELECT id from songs 
	WHERE (id%2 == 0 AND id > 50) 
	OR (id%2 != 0 AND id < 10);

	INSERT INTO User (
	FirstName, 
	LastName,
	Birthplace,
	CreatedAt
)
VALUES 
(	 
	'Wesley',
	'Chambers', 
	'Orlando, Florida',
	CURRENT_DATE
);

INSERT INTO User (
	FirstName, 
	LastName,
	Birthplace,
	CreatedAt
)
VALUES 
(	 
	'Arthur', 
	'Weasley',
	'Orlando, Florida',
	CURRENT_DATE
);

INSERT INTO User (
	FirstName, 
	LastName,
	Birthplace,
	CreatedAt
)
VALUES 
(	
	'Molly', 
	'Weasley',
	'Orlando, Florida',
	CURRENT_DATE
);

INSERT INTO User (
	FirstName, 
	LastName,
	Birthplace,
	CreatedAt
)
VALUES 
(
	'William', 
	'Weasley',
	'Orlando, Florida',
	CURRENT_DATE
);

INSERT INTO User (
	FirstName, 
	LastName,
	Birthplace,
	CreatedAt
)
VALUES 
(	
	'Charlie', 
	'Weasley',
	'Orlando, Florida',
	CURRENT_DATE
);

INSERT INTO User (
	FirstName, 
	LastName,
	Birthplace,
	CreatedAt
)
VALUES 
(	
	'Percy', 
	'Weasley',
	'Orlando, Florida',
	CURRENT_DATE
);

INSERT INTO User (
	FirstName, 
	LastName,
	Birthplace,
	CreatedAt
)
VALUES 
(	
	'Fred', 
	'Weasley',
	'Orlando, Florida',
	CURRENT_DATE
);

INSERT INTO User (
	FirstName, 
	LastName,
	Birthplace,
	CreatedAt
)
VALUES 
(	
	'George', 
	'Weasley',
	'Orlando, Florida',
	CURRENT_DATE
);

INSERT INTO User (
	FirstName, 
	LastName,
	Birthplace,
	CreatedAt
)
VALUES 
(	
	'Ronald', 
	'Weasley',
	'Orlando, Florida',
	CURRENT_DATE
);

INSERT INTO User (
	FirstName, 
	LastName,
	Birthplace,
	CreatedAt
)
VALUES 
(	
	'Ginerva', 
	'Weasley',
	'Orlando, Florida',
	CURRENT_DATE
);

INSERT INTO User (
	FirstName, 
	LastName,
	Birthplace,
	CreatedAt
)
VALUES 
(	
	'Hermione', 
	'Weasley',
	'Bristol, England',
	CURRENT_DATE
);

UPDATE User 
SET LastName = 'Granger', UpdatedAt = CURRENT_TIMESTAMP
WHERE FirstName = 'Hermione';

UPDATE User 
SET LastName = 'Potter', UpdatedAt = CURRENT_TIMESTAMP
WHERE FirstName = 'Ginerva';

BEGIN TRANSACTION;
	DELETE FROM User; 
	SELECT * FROM User; 
ROLLBACK;

INSERT INTO Favorite (
	UserID,
	CreatedAt
)

VALUES (
	'1',
	CURRENT_DATE
);

INSERT INTO Favorite (
	UserID,
	CreatedAt
)

VALUES (
	'2',
	CURRENT_DATE
);

INSERT INTO Favorite (
	UserID,
	CreatedAt
)

VALUES (
	'3',
	CURRENT_DATE
);

INSERT INTO Favorite (
	UserID,
	CreatedAt
)

VALUES (
	'4',
	CURRENT_DATE
);

INSERT INTO Favorite (
	UserID,
	CreatedAt
)

VALUES (
	'5',
	CURRENT_DATE
);

INSERT INTO Favorite (
	UserID,
	CreatedAt
)

VALUES (
	'6',
	CURRENT_DATE
);

INSERT INTO Favorite (
	UserID,
	CreatedAt
)

VALUES (
	'7',
	CURRENT_DATE
);

INSERT INTO Favorite (
	UserID,
	CreatedAt
)

VALUES (
	'8',
	CURRENT_DATE
);

INSERT INTO Favorite (
	UserID,
	CreatedAt
)

VALUES (
	'9',
	CURRENT_DATE
);

INSERT INTO Favorite (
	UserID,
	CreatedAt
)

VALUES (
	'10',
	CURRENT_DATE
);
INSERT INTO Favorite (
	UserID,
	CreatedAt
)

VALUES (
	'11',
	CURRENT_DATE
);

BEGIN TRANSACTION;
	DELETE FROM Favorite
	WHERE (UserID%2 != 0 OR UserID >= 10); 
	SELECT * FROM Favorite;
ROLLBACK;