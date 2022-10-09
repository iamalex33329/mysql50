-- 題目十八：查詢各科成績最高分、最低分和平均分：已如下形勢顯示：課程ID、課程名稱、最高分、最低分、平均分、及格率、中等率、優良率、優秀率
-- (及格>=60 中等70~80 優良80~90 優秀90~100)

SELECT
    s.c_id as 課程ID,
    c.c_name as 課程名稱,
    max(s.s_score) as 最高分,
    min(s.s_score) as 最低分,
    round(avg(s.s_score), 2) as 平均分,
    round( 100 * (sum(case when s.s_score >= 60 then 1 else 0  end)) / (sum(case when s.s_score then 1 else 0 end)), 2 ) as 及格率,
    
    round( 100 * (sum(case when s.s_score >= 70 and s.s_score < 80 then 1 else 0  end)) / (sum(case when s.s_score then 1 else 0 end)), 2 ) as 中等率,
    round( 100 * (sum(case when s.s_score >= 80 and s.s_score < 90 then 1 else 0  end)) / (sum(case when s.s_score then 1 else 0 end)), 2 ) as 優良率,
    round( 100 * (sum(case when s.s_score >= 90 then 1 else 0 end)) / (sum(case when s.s_score then 1 else 0 end)), 2 ) as 優秀率
FROM Score s
LEFT JOIN Course c
ON s.c_id = c.c_id
GROUP BY s.c_id;