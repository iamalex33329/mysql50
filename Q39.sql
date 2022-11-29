-- 題目三十九：每門課程的學生人數

SELECT
    sum(case when c.c_name = '語文' then 1 else 0 end) '語文',
    sum(case when c.c_name = '英語' then 1 else 0 end) '英語',
    sum(case when c.c_name = '數學' then 1 else 0 end) '數學'
FROM Score sc
JOIN Course c
ON sc.c_id = c.c_id;

-- SELECT
--     sc.c_id, 
--     count(sc.s_id)
-- FROM Score sc
-- GROUP BY sc.c_id;