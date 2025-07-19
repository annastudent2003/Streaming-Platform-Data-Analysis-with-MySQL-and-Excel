SELECT u.user_id
FROM streaming_app.users u
LEFT JOIN streaming_app.viewing_logs v ON u.user_id = v.user_id
WHERE v.user_id IS NULL;
