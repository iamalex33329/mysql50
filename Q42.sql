-- 題目四十二：查詢每門課程成績最好的前兩名

(SELECT sc.c_id, c.c_name, sc.s_id, s.s_name, sc.s_score
FROM Score sc
JOIN Student s
ON s.s_id = sc.s_id
JOIN Course c
ON c.c_id = sc.c_id
WHERE sc.c_id = '01'
ORDER BY sc.s_score DESC
LIMIT 2)

UNION

(SELECT sc.c_id, c.c_name, sc.s_id, s.s_name, sc.s_score
FROM Score sc
JOIN Student s
ON s.s_id = sc.s_id
JOIN Course c
ON c.c_id = sc.c_id
WHERE sc.c_id = '02'
ORDER BY sc.s_score DESC
LIMIT 2)

UNION

(SELECT sc.c_id, c.c_name, sc.s_id, s.s_name, sc.s_score
FROM Score sc
JOIN Student s
ON s.s_id = sc.s_id
JOIN Course c
ON c.c_id = sc.c_id
WHERE sc.c_id = '03'
ORDER BY sc.s_score DESC
LIMIT 2);