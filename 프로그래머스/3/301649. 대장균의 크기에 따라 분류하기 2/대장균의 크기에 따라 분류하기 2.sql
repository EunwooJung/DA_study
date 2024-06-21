-- 대장균 개체의 크기를 내림차순으로 정렬
-- 상위 0% ~ 25% 를 'CRITICAL'
-- 26% ~ 50% 를 'HIGH'
-- 51% ~ 75% 를 'MEDIUM'
-- 76% ~ 100% 를 'LOW'
-- 대장균 개체의 ID(ID) 와 분류된 이름(COLONY_NAME)을 출력
-- 이때 결과는 개체의 ID 에 대해 오름차순 정렬
-- 총 데이터의 수는 4의 배수
-- 같은 사이즈의 대장균 개체가 서로 다른 이름으로 분류되는 경우는 없음

WITH tbl_size AS (
                    SELECT id,
                           CUME_DIST() OVER (ORDER BY size_of_colony) AS colony_name
                    FROM ecoli_data
)
SELECT id,
       CASE 
            WHEN (colony_name) > 0.75 THEN 'CRITICAL'
            WHEN (colony_name) > 0.50 THEN 'HIGH'
            WHEN (colony_name) > 0.25 THEN 'MEDIUM'
            ELSE 'LOW'
       END AS colony_name
FROM tbl_size
ORDER BY id;