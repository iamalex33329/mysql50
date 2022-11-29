-- 題目一：查詢"01"課程比"02"課程成績高的學生的資訊及課程分數

SELECT a.*, b.s_score AS score1, c.s_score AS score2
FROM Student a, Score b, Score c
WHERE a.s_id = b.s_id
	AND a.s_id = c.s_id
	AND b.c_id = "01"
	AND c.c_id = "02"
	AND b.s_score > c.s_score;