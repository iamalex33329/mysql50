-- 題目二十四：查詢學生的平均成績及名次

-- 這題算簡單，但是 rank() over (order by XXX ASC/DESC) 務必記得
--     若XXX是數字越大，排名越前面，則要DESC
--     若XXX是數字越小，排名越前面，則要ASC

SELECT
    s.s_id,
    s.s_name,
    round(avg(c.s_score), 2) avg_score,
    rank() over (order by avg(c.s_score) DESC) '名次'
FROM Score c
JOIN Student s
ON c.s_id = s.s_id
GROUP BY s.s_id;