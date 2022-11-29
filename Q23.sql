-- 題目二十三：統計各科成績各分數段人數、課程編號、課程名稱、[100-85]、[85-70]
--          [70-60]、[60-0]及所佔百分比

-- case when ... then ... else ... end

SELECT
    s.c_id,
    c.c_name,
    sum(case when s.s_score >= 85 and s.s_score <= 100 then 1 else 0 end) "A人數",
    round(sum(case when s.s_score >= 85 and s.s_score <= 100 then 1 else 0 end) / sum(case when s.s_score then 1 else 0 end), 2) '%',
    sum(case when s.s_score >= 70 and s.s_score < 85 then 1 else 0 end)   "B人數",
    round(sum(case when s.s_score >= 70 and s.s_score < 85 then 1 else 0 end) / sum(case when s.s_score then 1 else 0 end), 2) '%',
    sum(case when s.s_score >= 60 and s.s_score < 70 then 1 else 0 end)   "C人數",
    round(sum(case when s.s_score >= 60 and s.s_score < 70 then 1 else 0 end) / sum(case when s.s_score then 1 else 0 end), 2) '%',
    sum(case when s.s_score >= 0  and s.s_score < 60 then 1 else 0 end)   "D人數",
    round(sum(case when s.s_score >= 0 and s.s_score < 60 then 1 else 0 end) / sum(case when s.s_score then 1 else 0 end), 2) '%'
FROM
    Score s
LEFT JOIN
    Course c
ON
    s.c_id = c.c_id
GROUP BY
    s.c_id;