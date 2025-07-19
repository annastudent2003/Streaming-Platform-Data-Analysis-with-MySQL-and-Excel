SELECT
  issue_type,
  COUNT(*) AS total_tickets
FROM streaming_app.support_tickets
GROUP BY issue_type
ORDER BY total_tickets DESC;
