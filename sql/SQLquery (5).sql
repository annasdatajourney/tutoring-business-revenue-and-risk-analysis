USE tutoring_business;
GO

SELECT TOP 10 * 
FROM lessons;
SELECT 
    SUM(l.final_price) AS expected_revenue,
    SUM(p.amount_paid) AS actual_revenue,
    SUM(l.final_price) - SUM(p.amount_paid) AS revenue_gap
FROM lessons l
LEFT JOIN payments p
    ON l.lesson_id = p.lesson_id;
