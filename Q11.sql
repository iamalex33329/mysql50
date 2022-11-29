-- 題目十一：查詢沒有學完全部課程的學生資訊

-- 依照課程總數來判斷學生分數剛好等於課程總數，再取沒有全部課程的人(用not in)

SELECT s.*
FROM Student s
WHERE s_id not in (
	SELECT s_id
    FROM Score
    GROUP BY s_id
    HAVING count(*) = (SELECT count(*) FROM Course)
)