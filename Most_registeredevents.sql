SELECT e.title, COUNT(r.user_id) AS registration_count
FROM Events e
JOIN Registrations r ON e.event_id = r.event_id
GROUP BY e.title
ORDER BY registration_count DESC
LIMIT 3;
