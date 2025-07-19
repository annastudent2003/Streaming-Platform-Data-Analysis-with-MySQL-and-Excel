SELECT
  user_id,
  COUNT(*) AS view_count
FROM streaming_app.viewing_logs
GROUP BY user_id
ORDER BY view_count DESC
LIMIT 10;
