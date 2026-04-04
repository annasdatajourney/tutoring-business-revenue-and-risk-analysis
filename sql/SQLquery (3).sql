SELECT 
    age_group,
    status,
    COUNT(*) AS lesson_count,
    SUM(final_price) AS expected_revenue
FROM lessons
WHERE status IN ('cancelled_by_student', 'no_show')
GROUP BY age_group, status
ORDER BY expected_revenue DESC;