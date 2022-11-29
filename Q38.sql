-- 題目三十八：查詢課程編號為01且課程成績大於等於80的學生學號及姓名

SELECT s.s_id, s.s_name, sc.s_score
FROM Score sc
JOIN Student s
ON s.s_id = sc.s_id
WHERE sc.c_id = '01' AND sc.s_score >= 80;