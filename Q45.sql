-- 題目四十五：查詢選修全部課程的學生資訊

SELECT s.*, count(sc.s_score)
FROM Score sc
JOIN Student s
ON sc.s_id = s.s_id
GROUP BY sc.s_id
HAVING count(sc.s_score) IN (
    SELECT count(*)
    FROM Course c
);