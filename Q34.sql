-- 題目三十四：查詢課程名稱為數學，且分數低於60的學生姓名和分數

SELECT s.s_id, s.s_name, c.c_name, sc.s_score
FROM Score sc
JOIN Course c
ON sc.c_id = c.c_id
JOIN Student s
ON sc.s_id = s.s_id
WHERE sc.s_score < 60
AND c.c_name = '數學';