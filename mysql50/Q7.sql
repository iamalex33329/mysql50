-- 題目七：查詢張三老師授課過的同學訊息

SELECT a.*, b.c_name
FROM Student a, Course b, Teacher c, Score d
WHERE c.t_name = '張三'
	AND c.t_id = b.t_id
    AND b.c_id = d.c_id
    AND a.s_id = d.s_id;