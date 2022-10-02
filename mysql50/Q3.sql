-- 題目三：查詢平均成績大於等於60分的同學的學生編號和學生姓名和平均成績(也求總成績大於等於200分的同學)

-- round(x, y) 從x取到小數點後第y位

SELECT
	a.s_id,
    a.s_name,
    round(avg(b.s_score), 2) AS avg_score
FROM
	Student a,
	Score b
WHERE a.s_id = b.s_id
GROUP BY a.s_id HAVING avg_score >= 60; 


-- sum() 求總和

SELECT
	a.s_id,
    a.s_name,
    sum(b.s_score) AS total_score
FROM
	Student a,
	Score b
WHERE a.s_id = b.s_id
GROUP BY a.s_id HAVING total_score >= 200;