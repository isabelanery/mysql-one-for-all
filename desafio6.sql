SELECT 
  CONVERT(ROUND(MIN(subscription_value), 2), NCHAR) AS faturamento_minimo,
  CONVERT(MAX(subscription_value), NCHAR) AS faturamento_maximo,
  CONVERT(ROUND(AVG(subscription_value), 2), NCHAR) AS faturamento_medio,
  CONVERT(ROUND(SUM(subscription_value), 2), NCHAR) AS faturamento_total
FROM SpotifyClone.Users AS u
INNER JOIN SpotifyClone.Subscription_plans AS s
ON u.subscription_id = s.subscription_id;
