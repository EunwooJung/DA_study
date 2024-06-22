-- 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값
-- 큰 순서대로 상위 3개의 맛을 조회

WITH tbl_top3 AS (
                SELECT F.flavor,
                       SUM(F.total_order + J.total_order) AS total
                FROM first_half F
                JOIN july J ON F.flavor = J.flavor
                GROUP BY F.flavor
                ORDER BY total DESC
                LIMIT 3
)
SELECT flavor
FROM tbl_top3;