-- 題目三十五：查詢所有學生的課程分數及各科總分狀況

SELECT
    s.s_id,
    s.s_name,
    sum(case when c.c_name = '語文' then sc.s_score else 0 end) '語文',
    sum(case when c.c_name = '數學' then sc.s_score else 0 end) '數學',
    sum(case when c.c_name = '英語' then sc.s_score else 0 end) '英語',
    sum(sc.s_score) '總分'
FROM Student s
LEFT JOIN Score sc
ON s.s_id = sc.s_id
LEFT JOIN Course c
ON sc.c_id = c.c_id
GROUP BY s.s_id;