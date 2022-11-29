-- 題目三十二：查詢每門課程的平均成績，結果按平均成績降序排列；平均成績相同時，按課程編號c_id升序排列

SELECT c.c_id '課程代號', c.c_name '課程名稱', round(avg(s.s_score), 2) '平均成績'
FROM Score s
JOIN Course c
ON s.c_id = c.c_id
GROUP BY s.c_id
ORDER BY avg(s.s_score) DESC, s.c_id ASC;