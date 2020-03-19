--Select * From Genre

--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('BackstreetBoys', 1999);

INSERT INTO album(Title, ReleaseDate, AlbumLength, [Label], ArtistId, GenreId) VALUES ('Millenium', 1999, '3', '3', '31', '7');

INSERT INTO Song(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Larger Than Life', '233', '1999', '7', '31', '25');



Select a.Title, s.Title, ar.ArtistName
From song s
Left Join Album a
on s.AlbumId = a.Id
Left Join Artist ar
on s.ArtistId = ar.Id


SELECT COUNT(AlbumId)
as 'Song Count', a.Title
From Song s
LEFT join Album a
On s.AlbumId = a.Id
Group By albumId, a.Title
Order By COUNT(AlbumId) desc;
	
SELECT COUNT(ArtistId)
as 'Song Count', ar.ArtistName
From Song s
LEFT join Artist ar
On s.ArtistId = ar.Id
Group By albumId, ar.ArtistName
Order By COUNT(ArtistId) desc;

SELECT COUNT(GenreId)
as 'Song Count', g.[Label]
From Song s
LEFT join Genre g
On s.GenreId = g.Id
Group By GenreId , g.Label

Select Title, AlbumLength
From Album
Where AlbumLength =(Select Max(AlbumLength) from Album);

SELECT s.Title, a.Title, SongLength as 'Song Length'
from Song s
LEFT JOIN Album a on s.AlbumId = a.Id
WHERE SongLength=(SELECT MAX(SongLength) from Song);