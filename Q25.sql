-- 題目二十五：查詢各科成績前三名的紀錄

(
SELECT s.c_id, s.s_score,  c.c_name, row_number() over (order by s.s_score DESC) as '排名'
FROM Score s
JOIN Course c ON c.c_id = s.c_id
WHERE s.c_id = '01'
ORDER BY s.s_score DESC
LIMIT 3
)

UNION

(
SELECT s.c_id, s.s_score,  c.c_name, row_number() over (order by s.s_score DESC) as '排名'
FROM Score s
JOIN Course c ON c.c_id = s.c_id
WHERE s.c_id = '02'
ORDER BY s.s_score DESC
LIMIT 3
)

UNION

(
SELECT s.c_id, s.s_score,  c.c_name, row_number() over (order by s.s_score DESC) as '排名'
FROM Score s
JOIN Course c ON c.c_id = s.c_id
WHERE s.c_id = '03'
ORDER BY s.s_score DESC
LIMIT 3
)