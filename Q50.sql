-- 題目五十：查詢下個月過生日的同學

SELECT *, month(s_birth)
FROM Student
WHERE month(now())+1 = month(s_birth);
