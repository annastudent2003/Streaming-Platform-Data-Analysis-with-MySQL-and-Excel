SELECT
  user_id,
  COUNT(*) AS total_tickets
FROM streaming_app.support_tickets
GROUP BY user_id
HAVING total_tickets >= 5
ORDER BY total_tickets DESC;

