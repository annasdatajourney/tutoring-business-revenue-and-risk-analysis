SELECT 
    status,
    COUNT(*) AS lesson_count,
    SUM(final_price) AS expected_revenue
FROM lessons
GROUP BY status
ORDER BY lesson_count DESC;