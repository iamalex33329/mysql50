-- 題目八：找出沒有上過張三老師的課的學生

SELECT a.*
FROM Student a
WHERE a.s_id NOT IN (
	SELECT a.s_id
	FROM Student a, Teacher b, Course c, Score d
	WHERE b.t_name = '張三'
		AND b.t_id = c.t_id
		AND c.c_id = d.c_id
		AND a.s_id = d.s_id
);