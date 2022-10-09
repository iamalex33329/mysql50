-- 題目十：查詢學過01課程，但沒學過02課程的學生資訊

SELECT s.*
FROM Student s
WHERE s.s_id in ( SELECT s_id FROM Score WHERE c_id = '01' ) and
	s.s_id not in ( SELECT s_id FROM Score WHERE c_id = '02' );