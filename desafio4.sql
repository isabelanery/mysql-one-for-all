SELECT 
user_name AS usuario,
IF (MAX(YEAR(listened_on)) = 2021, 'Usuário ativo', 'Usuário inativo' ) AS condicao_usuario
FROM SpotifyClone.Users AS u
INNER JOIN SpotifyClone.History_played_songs AS h
ON u.user_id = h.user_id
GROUP BY user_name
ORDER BY user_name;
