SELECT
  user_id,
  COUNT(*) AS total_tickets
FROM streaming_app.support_tickets
GROUP BY user_id
ORDER BY total_tickets DESC
LIMIT 10;

