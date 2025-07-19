SELECT
  COUNT(*) AS total_users,
  SUM(CASE WHEN cancel_date IS NULL THEN 1 ELSE 0 END) AS active_users,
  SUM(CASE WHEN cancel_date IS NOT NULL THEN 1 ELSE 0 END) AS churned_users,
  ROUND(SUM(CASE WHEN cancel_date IS NOT NULL THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS churn_rate
FROM streaming_app.users;
