-- 題目四十七：查詢本週過生日的同學

-- DAYOFWEEL(date) => 1 -> Sun, 2 -> Mon, 3 -> Tue, 4 -> Wed ...
-- WEEKDAY(date)   => 0 -> Mon, 1 -> Tue, 2 -> Wed, 3 -> Thu ...

SELECT *, week(s_birth)
FROM Student
WHERE week(now()) = week(s_birth);
