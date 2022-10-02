-- 題目二：查詢"01"課程比"02"課程成績低的學生的資訊及課程分數alter

SELECT
	a.*,
    b.s_score as score1,
    c.s_score as score2
FROM Student a
	JOIN Score b ON b.s_id = a.s_id AND b.c_id = "01"
	JOIN Score c ON c.s_id = a.s_id AND c.c_id = "02"
WHERE
    b.s_score < c.s_score;