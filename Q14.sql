-- 題目十四：查詢「沒有」修過張三老師的課的學生姓名

SELECT *
FROM Student
WHERE s_id not in (
    SELECT DISTINCT s_id
    FROM Score
    WHERE c_id = (
        SELECT c_id
        FROM Course
        WHERE t_id = (
            SELECT t_id
            FROM Teacher
            WHERE t_name = '張三'
        )
    )
);