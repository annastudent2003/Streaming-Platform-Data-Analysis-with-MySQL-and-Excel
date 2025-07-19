SELECT
  user_id,
  ROUND(SUM(time_spent_minutes), 2) AS total_minutes_watched,
  COUNT(*) AS sessions
FROM streaming_app.viewing_logs
WHERE time_spent_minutes IS NOT NULL AND time_spent_minutes > 0
GROUP BY user_id
ORDER BY total_minutes_watched DESC
LIMIT 10;

