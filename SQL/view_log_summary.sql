SELECT
  COUNT(*) AS total_sessions,
  ROUND(SUM(time_spent_minutes), 2) AS total_minutes_watched
FROM streaming_app.viewing_logs
WHERE time_spent_minutes IS NOT NULL AND time_spent_minutes > 0;
