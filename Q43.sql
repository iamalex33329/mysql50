-- 題目四十三：統計每門課程的學生選課人數（超過五人的才統計）要求輸出課程編號和
--           選修人數，查詢結果按人數降序排列，若人數相同，按課程編號升序排列

SELECT sc.c_id '課程編號', count(sc.s_score) '選修人數'
FROM Score sc
GROUP BY sc.c_id
HAVING count(sc.s_id) >= 5
ORDER BY count(sc.s_id) DESC, sc.c_id;