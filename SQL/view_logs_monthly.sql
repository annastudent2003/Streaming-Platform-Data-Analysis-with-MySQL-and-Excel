SELECT
  DATE_FORMAT(activity_date, '%Y-%m') AS month,
  COUNT(*) AS views
FROM streaming_app.viewing_logs
GROUP BY month
ORDER BY month;
