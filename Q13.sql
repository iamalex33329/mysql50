-- 題目十三：查詢和01同學修的課程完全一樣的學生資訊

-- group_concat(c_id ORDER BY c_id)
-- 需要進行排序的原因是防止出現這種情況: 01同學修的課程順序是:01, 02, 03;
-- 如果有同學修課的順序是 02, 03, 01，雖然順序不同，但是本質上他們修的課程是相同的

SELECT
    s.*
FROM
    Student s
WHERE s_id in (
	SELECT s_id
    FROM Score
    GROUP BY s_id
    HAVING group_concat(c_id ORDER BY c_id) = (
		SELECT group_concat(c_id ORDER BY c_id)
        FROM Score
        GROUP BY s_id
        HAVING s_id = '01'
    )
    and s_id != '01'
);

-- 最後 s_id != '01' 是為了把自己排除在外