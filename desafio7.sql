SELECT
  artist_name AS artista,
  album_name AS album,
  COUNT(user_id) AS seguidores
FROM 
  SpotifyClone.Artists AS ar
INNER JOIN SpotifyClone.Albums AS al
  ON ar.artist_id = al.artist_id
INNER JOIN SpotifyClone.Following_artists AS f
  ON ar.artist_id = f.artist_id
GROUP BY artist_name, album_name
ORDER BY seguidores DESC, artista ASC, album ASC;
