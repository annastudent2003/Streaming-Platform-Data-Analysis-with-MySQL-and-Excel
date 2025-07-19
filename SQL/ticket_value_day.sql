SELECT
  DATE(date_created) AS day,
  COUNT(*) AS total_tickets
FROM streaming_app.support_tickets
GROUP BY day
ORDER BY day;
