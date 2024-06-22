-- 우유(Milk)와 요거트(Yogurt)를 동시에 구입한 장바구니가 있는지
-- 우유와 요거트를 동시에 구입한 장바구니의 아이디를 조회
-- 결과는 장바구니의 아이디 순

WITH tbl_my AS (
                SELECT cart_id, name
                FROM cart_products
                WHERE name = 'Milk'
                UNION
                SELECT cart_id, name
                FROM cart_products
                WHERE name = 'Yogurt'
                GROUP BY cart_id, name
                ORDER BY cart_id
)
SELECT cart_id
FROM (
      SELECT cart_id, COUNT(*) AS num
      FROM tbl_my
      GROUP BY cart_id
      HAVING num = 2
) AS tbl_filtering
ORDER BY cart_id;