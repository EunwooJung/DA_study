-- 몇 시에 입양이 가장 활발하게 일어나는지
-- 0시부터 23시
-- 각 시간대별로 입양이 몇 건이나 발생했는지 조회
-- 시간대 순으로 정렬

WITH RECURSIVE cte (n) AS
(
  SELECT 0
  UNION ALL
  SELECT n + 1 FROM cte WHERE n < 23
)
SELECT n AS HOUR, COUNT(ANIMAL_ID)
FROM cte LEFT JOIN ANIMAL_OUTS ON n = HOUR(DATETIME)
GROUP BY n
ORDER BY n