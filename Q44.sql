-- 題目四十四：查詢至少選修兩門課程的學生學號

SELECT sc.s_id, count(sc.s_score) '修課數量'
FROM Score sc
GROUP BY sc.s_id
HAVING count(sc.s_score) >= 2;