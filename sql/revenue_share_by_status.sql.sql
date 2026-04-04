SELECT 
    status,
    COUNT(*) AS lesson_count,
    SUM(final_price) AS expected_revenue,
    CAST(
        100.0 * SUM(final_price) / SUM(SUM(final_price)) OVER() 
        AS DECIMAL(5,2)
    ) AS revenue_share_percent
FROM lessons
GROUP BY status
ORDER BY expected_revenue DESC;