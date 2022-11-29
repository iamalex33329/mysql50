-- 題目三十：查詢同名同姓得學生名單，並統計同名人數

SELECT a.*, count(a.s_name)
FROM Student a
JOIN Student b
ON a.s_id != b.s_id
AND a.s_name = b.s_name
GROUP BY 1, 2;