-- 題目三十三：查詢平均成績大於等於85的所有學生學號、姓名和平均成績

SELECT s.s_id, s.s_name, round(avg(sc.s_score), 2)
FROM Student s
JOIN Score sc
ON s.s_id = sc.s_id
GROUP BY sc.s_id
HAVING avg(sc.s_score) >= 85;