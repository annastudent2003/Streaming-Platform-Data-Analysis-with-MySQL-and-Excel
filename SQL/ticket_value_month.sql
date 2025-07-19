SELECT
  DATE_FORMAT(date_created, '%Y-%m') AS month,
  COUNT(*) AS total_tickets
FROM streaming_app.support_tickets
GROUP BY month
ORDER BY month;
