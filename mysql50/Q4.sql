-- 題目四：查詢平均成績小於60分的同學的學生編號和學生姓名和平均成績（包括有成績和無成績的）

SELECT
	a.s_id,
    a.s_name,
    round(avg(b.s_score), 2) as avg_score
FROM Student a
	LEFT JOIN Score b ON a.s_id = b.s_id
GROUP BY a.s_id HAVING avg_score <= 60 or avg_score is null;
