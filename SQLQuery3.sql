--Select * From Genre

--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('BackstreetBoys', 1999);

INSERT INTO album(Title, ReleaseDate, AlbumLength, [Label], ArtistId, GenreId) VALUES ('Millenium', 1999, '3', '3', '31', '7');

INSERT INTO Song(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Larger Than Life', '233', '1999', '7', '31', '25');
	


SELECT a.Title, s.Title FROM Song s 
LEFT JOIN Album a ON s.AlbumId = a.Id;

SELECT s.Title, a.Title, art.ArtistName, g.[Label]
from Song s
LEFT JOIN Album a on s.AlbumId = a.Id
LEFT JOIN Artist art on s.ArtistId = art.Id
LEFT JOIN Genre g on s.GenreId = g.Id;

SELECT COUNT(AlbumId) as 'Song Count', a.Title 
from Song s
LEFT JOIN Album a on s.AlbumId = a.Id
GROUP BY AlbumId, a.Title;


SELECT COUNT(ArtistId) as 'Song Count', art.ArtistName
from Song s
LEFT JOIN Artist art on s.ArtistId = art.Id
GROUP BY ArtistId, art.ArtistName;

SELECT COUNT(GenreId) as 'Song Count', g.Label
from Song s
LEFT JOIN Genre g on s.GenreId = g.Id
GROUP BY GenreId, g.Label;

SELECT Title, AlbumLength as 'Album Length'
from Album
WHERE AlbumLength=(SELECT MAX(AlbumLength) from Album);


SELECT s.Title, a.Title, SongLength as 'Song Length'
from Song s
LEFT JOIN Album a on s.AlbumId = a.Id
WHERE SongLength=(SELECT MAX(SongLength) from Song);