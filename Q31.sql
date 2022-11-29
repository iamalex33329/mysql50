-- 題目三十一：查詢1990年出生的學生訊息

SELECT *
FROM Student s
WHERE s.s_birth LIKE "%1990%";
