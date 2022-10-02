-- 題目一：查詢"01"課程比"02"課程成績高的學生的資訊及課程分數

SELECT
	a.*,
    b.s_score as score1,
    c.s_score as score2
FROM 
	Student a,
	Score b,
    Score c
WHERE 
	a.s_id = b.s_id	and
    a.s_id = c.s_id and
    b.c_id = "01" and
    c.c_id = "02" and
    b.s_score > c.s_score;