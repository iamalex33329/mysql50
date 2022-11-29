-- 題目六：查詢姓“李”的老師數量

SELECT count(t_name) as teacher_amount
FROM Teacher
WHERE t_name LIKE '李%';