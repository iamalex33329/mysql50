-- 題目二十一：查詢不同老師所教不同課程的平均分數，從高至低顯示

SELECT
    t.t_name,
    c.c_name,
    round(avg(s.s_score), 2) avg_score
FROM
    Course c
LEFT JOIN Teacher t ON t.t_id = c.t_id
LEFT JOIN Score s ON s.c_id = c.c_id
GROUP BY c.c_id
ORDER BY avg_score DESC;