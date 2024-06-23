-- 3세대의 대장균의 ID(ID) 를 출력
-- 결과는 대장균의 ID 에 대해 오름차순 정렬

SELECT B.id
FROM (
        SELECT id, parent_id
        FROM ecoli_data
        WHERE parent_id IN (
                    SELECT id
                    FROM ecoli_data
                    WHERE parent_id IS NULL
                )
) AS A
JOIN ecoli_data B ON A.id = B.parent_id
ORDER BY B.id;