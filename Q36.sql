-- 題目三十六：查詢任何一門課程成績在70分以上的姓名、課程名稱和分數

SELECT s.s_name, c.c_name, sc.s_score
FROM Score sc
JOIN Student s
ON sc.s_id = s.s_id
JOIN Course c
ON c.c_id = sc.c_id
WHERE sc.s_score >= 70;