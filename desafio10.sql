SELECT
  music_name AS nome,
  COUNT(*) AS reproducoes 
FROM SpotifyClone.History_played_songs AS h
INNER JOIN SpotifyClone.Users AS u
	ON h.user_id = u.user_id
INNER JOIN SpotifyClone.Songs AS s
	ON h.music_id = s.music_id
WHERE subscription_id IN (1, 3)
GROUP BY music_name
ORDER BY reproducoes DESC, nome ASC;

