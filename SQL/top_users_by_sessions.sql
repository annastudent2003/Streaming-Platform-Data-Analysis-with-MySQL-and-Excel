SELECT
  user_id,
  COUNT(*) AS total_sessions
FROM streaming_app.viewing_logs
WHERE time_spent_minutes IS NOT NULL AND time_spent_minutes > 0
GROUP BY user_id
ORDER BY total_sessions DESC
LIMIT 10;
