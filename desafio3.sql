SELECT 
user_name AS usuario,
COUNT(music_name) AS qtde_musicas_ouvidas,
ROUND(SUM(music_duration_seconds)/60, 2) AS total_minutos
FROM SpotifyClone.Users AS u
INNER JOIN SpotifyClone.History_played_songs AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.Songs AS s
ON h.music_id = s.music_id
GROUP BY user_name
ORDER BY user_name;