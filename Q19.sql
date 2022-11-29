-- 題目十九：按照各科成績進行排序，並顯示排名

SELECT *
FROM (
	SELECT
		t1.c_id,
		t1.s_score,
		(
			SELECT count(distinct s1.s_score)+1
			FROM Score s1
			WHERE s1.s_score > t1.s_score and
				s1.c_id = '01'
		) 排名
	FROM Score t1
	WHERE t1.c_id = '01'
	ORDER BY t1.s_score DESC
) t1

UNION

SELECT *
FROM (
	SELECT
		t2.c_id,
		t2.s_score,
		(
			SELECT count(distinct s2.s_score)+1
			FROM Score s2
			WHERE s2.s_score > t2.s_score and
				s2.c_id = '02'
		) 排名
	FROM Score t2
	WHERE t2.c_id = '02'
	ORDER BY t2.s_score DESC
) t2

UNION

SELECT *
FROM (
	SELECT
		t3.c_id,
		t3.s_score,
		(
			SELECT count(distinct s3.s_score)+1
			FROM Score s3
			WHERE s3.s_score > t3.s_score and
				s3.c_id = '03'
		) 排名
	FROM Score t3
	WHERE t3.c_id = '03'
	ORDER BY t3.s_score DESC
) t3;