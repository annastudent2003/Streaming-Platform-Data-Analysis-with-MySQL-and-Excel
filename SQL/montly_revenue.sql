SELECT
  DATE_FORMAT(payment_date, '%Y-%m') AS month,
  ROUND(SUM(amount), 2) AS total_revenue
FROM streaming_app.payments
GROUP BY month
ORDER BY month;
