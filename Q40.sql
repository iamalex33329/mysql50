-- 題目四十：查詢選修張三老師所教授課程中，成績最高的學生資訊及成績

SELECT s.*, c.c_id, c.c_name, sc.s_score
FROM Student s
LEFT JOIN Score sc
ON s.s_id = sc.s_id
LEFT JOIN Course c
ON c.c_id = sc.c_id
WHERE sc.s_score in (
	SELECT max(sc.s_score)
	FROM Score sc, (
		SELECT c.c_id
		FROM Course c, Teacher t
		WHERE c.t_id = t.t_id
		AND t.t_name = '張三'
	) c
	WHERE sc.c_id = c.c_id
);