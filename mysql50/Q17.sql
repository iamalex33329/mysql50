-- 題目十七：按照平均成績由高至低顯示所有學生的課程成績以及平均成績

SELECT
    s.s_id,
    (SELECT s_score FROM Score WHERE s_id = s.s_id and c_id = '01') as 語文,
    (SELECT s_score FROM Score WHERE s_id = s.s_id and c_id = '02') as 數學,
    (SELECT s_score FROM Score WHERE s_id = s.s_id and c_id = '03') as 英語,
    round(avg(s.s_score), 2) as avg_score
FROM Score s
GROUP BY s.s_id
ORDER BY avg_score DESC;