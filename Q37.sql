-- 題目三十七：查詢不及格的課程

SELECT sc.s_id, s.s_name, c.c_name, sc.s_score
FROM Score sc
JOIN Course c
ON sc.c_id = c.c_id
JOIN Student s
ON sc.s_id = s.s_id
WHERE sc.s_score < 60;