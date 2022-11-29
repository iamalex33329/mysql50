-- 題目十五：查詢兩門以上不及格的同學姓名、學號及平均成績

SELECT
    s.s_id,
    s.s_name,
    t.avg_score
FROM Student s
JOIN (
    SELECT s_id, round(avg(s_score), 2) avg_score
    FROM Score
    WHERE s_score < 60
    GROUP BY s_id
    HAVING count(s_score) >= 2
) t
ON s.s_id = t.s_id;