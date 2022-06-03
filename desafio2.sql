SELECT 
	COUNT(music_id) AS cancoes,
  COUNT(DISTINCT album_id) AS albuns,
  COUNT(DISTINCT artist_id) AS artistas 
	FROM SpotifyClone.Songs AS s
	INNER JOIN SpotifyClone.Albums AS a
	ON s.id_album = a.album_id;