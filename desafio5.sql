SELECT 
music_name AS cancao,
COUNT(music_name) AS reproducoes
FROM SpotifyClone.Songs AS s
INNER JOIN SpotifyClone.History_played_songs AS h
ON s.music_id = h.music_id
GROUP BY music_name
ORDER BY reproducoes DESC, music_name ASC
LIMIT 2;