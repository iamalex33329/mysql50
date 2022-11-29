-- 題目二十六：查詢每門課被選修的學生數

SELECT c.c_id '課程代號', c.c_name '課程',  COUNT(s.s_id) '修課人數'
FROM Course c
LEFT JOIN Score s
ON c.c_id = s.c_id
GROUP BY c.c_id;