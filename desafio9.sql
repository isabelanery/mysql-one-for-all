SELECT 
  COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.Users AS u
INNER JOIN SpotifyClone.History_played_songs AS h
  ON u.user_id = h.user_id
WHERE user_name = 'Bill';