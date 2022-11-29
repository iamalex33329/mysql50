-- 題目十二：查詢至少有一門課是跟01同學修同一堂課的學生資訊

SELECT s1.*
FROM Student s1
JOIN Score s2
ON s1.s_id = s2.s_id and
	c_id in ( SELECT c_id FROM Score WHERE s_id = '01' )
GROUP BY s1.s_id;