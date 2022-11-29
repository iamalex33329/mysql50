-- 題目四十九：查詢本月過生日的同學

SELECT *, month(s_birth)
FROM Student
WHERE month(now()) = month(s_birth);
