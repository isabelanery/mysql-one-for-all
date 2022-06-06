SELECT
	artist_name AS artista,
	album_name AS album
FROM SpotifyClone.Artists AS ar
INNER JOIN SpotifyClone.Albums AS al
  ON ar.artist_id = al.artist_id
WHERE artist_name = 'Walter Phoenix';