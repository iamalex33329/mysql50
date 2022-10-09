-- 題目二十：查詢學生的總成績，並進行排名

-- rank() over (order by xxx DESC) -> 數值最大的為第一開始排
-- rank() over (order by xxx ASC)  -> 數值最小的為第一開始排

SELECT
    s1.s_id,
    s2.s_name,
    sum(s1.s_score) as total_score,
    rank() OVER (ORDER BY sum(s1.s_score) DESC) as 'Rank'
FROM
    Score s1
JOIN Student s2
ON s1.s_id = s2.s_id
GROUP BY s1.s_id
ORDER BY total_score DESC;