-- 題目四十六：查詢各學生年齡：按照出生日期來算，當前月日<出生年月日的月日，則年齡減1

SELECT *, year(now()) - year(s_birth) + (case when date_format(now(), '%m%d') < date_format(s_birth, '%m%d') then -1 else 0 end) 'age'
FROM Student;