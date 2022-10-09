-- 題目九：查詢學過課程編號為01以及編號為02的學生資訊

SELECT a.*
FROM Student a, Score b, Score c
WHERE a.s_id = b.s_id
    AND a.s_id = c.s_id
    AND b.c_id = '01'
    AND c.c_id = '02';