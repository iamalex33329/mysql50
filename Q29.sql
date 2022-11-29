-- 題目二十九：查詢名字中含有「風」字的學生資訊

SELECT *
FROM Student
WHERE Student.s_name LIKE "%風%";