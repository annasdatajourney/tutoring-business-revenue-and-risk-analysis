SELECT 
    month_name,
    COUNT(*) AS disrupted_lessons,
    SUM(final_price) AS lost_revenue
FROM lessons
WHERE status IN ('cancelled_by_student', 'no_show')
GROUP BY month_name
ORDER BY lost_revenue DESC;