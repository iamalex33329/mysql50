-- 題目十六：查詢01課程分數小於60的學生資訊及成績，並按分數降序來排列

SELECT s.*, c.s_score
FROM Student s
JOIN Score c
ON s.s_id = c.s_id
WHERE c.c_id = '01' and
    c.s_score < 60
ORDER BY c.s_score DESC;