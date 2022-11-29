-- 題目二十七：查詢出只有兩門課程的全部學生的學號和姓名

SELECT Student.s_id, Student.s_name
FROM Student
JOIN (
	SELECT scr.s_id, COUNT(scr.s_id) as class
	FROM Score scr
	GROUP BY scr.s_id
) Score
ON Score.class = 2 
AND Score.s_id = Student.s_id;

-- SELECT s.s_id, s.s_name
-- FROM Student s
-- JOIN Score sc
-- ON s.s_id = sc.s_id
-- GROUP BY 1,2
-- HAVING COUNT(sc.s_id) = 2;