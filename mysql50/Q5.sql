-- 題目五：查詢「所有」同學的學生編號、學生姓名、選課總數、所有課程的總成績

-- 有些學生沒有選到課但還是必須列出來，所以這邊要用Student LEFT JOIN Score才能把沒選到課的學生也列出來

SELECT
	a.s_id,
    a.s_name,
    count(b.c_id) as course_amount,
    sum(b.s_score) as total_score
FROM Student a
	LEFT JOIN Score b ON a.s_id = b.s_id
GROUP BY a.s_id;