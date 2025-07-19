SELECT 
  ROUND(AVG(time_spent_minutes), 2) AS avg_minutes_per_session
FROM streaming_app.viewing_logs
WHERE time_spent_minutes IS NOT NULL AND time_spent_minutes > 0;
