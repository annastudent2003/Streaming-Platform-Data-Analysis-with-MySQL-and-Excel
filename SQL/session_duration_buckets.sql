SELECT
  CASE
    WHEN time_spent_minutes < 5 THEN '<5 min'
    WHEN time_spent_minutes BETWEEN 5 AND 15 THEN '5–15 min'
    WHEN time_spent_minutes BETWEEN 16 AND 30 THEN '16–30 min'
    WHEN time_spent_minutes BETWEEN 31 AND 60 THEN '31–60 min'
    ELSE '60+ min'
  END AS duration_bucket,
  COUNT(*) AS session_count
FROM streaming_app.viewing_logs
WHERE time_spent_minutes IS NOT NULL AND time_spent_minutes > 0
GROUP BY duration_bucket
ORDER BY session_count DESC;
