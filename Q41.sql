-- 題目四十一：查詢不同課程成績相同的學生編號、課程編號以及學生成績

-- 使用到了DISTINCT方法來過濾重複值

SELECT
    DISTINCT sc1.s_id,
    sc1.c_id,
    sc1.s_score
FROM Score sc1
JOIN Score sc2
ON sc1.c_id != sc2.c_id
AND sc1.s_id != sc2.s_id
AND sc1.s_score = sc2.s_score;