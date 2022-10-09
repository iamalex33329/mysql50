-- 題目二十二：查詢課程的成績第二名及第三名的學生資訊及該課程成績

-- LIMIT x, y == x, x+1, x+2 ... y-1, y (從0開始算)

SELECT s.*, t.c_name, t.s_score
FROM Student s
JOIN
	((SELECT s.*, c.c_name
	FROM Score s
	JOIN Course c
	ON s.c_id = c.c_id and
		c.c_id = '01'
	ORDER BY s.s_score DESC
	LIMIT 1, 2)

	UNION

	(SELECT s.*, c.c_name
	FROM Score s
	JOIN Course c
	ON s.c_id = c.c_id and
		c.c_id = '02'
	ORDER BY s.s_score DESC
	LIMIT 1, 2)

	UNION

	(SELECT s.*, c.c_name
	FROM Score s
	JOIN Course c
	ON s.c_id = c.c_id and
		c.c_id = '03'
	ORDER BY s.s_score DESC
	LIMIT 1, 2)) t
ON
    s.s_id = t.s_id;