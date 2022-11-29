-- 題目二十八：查詢男女生人數

SELECT
count(case when s.s_sex = '男' then 1 end) '男',
count(case when s.s_sex = '女' then 1 end) '女'
FROM Student s;

-- SELECT s.s_sex, count(s.s_sex)
-- FROM Student s
-- GROUP BY s.s_sex;