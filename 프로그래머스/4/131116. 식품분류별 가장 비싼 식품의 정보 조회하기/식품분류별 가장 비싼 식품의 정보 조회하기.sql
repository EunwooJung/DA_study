SELECT category, price, product_name
FROM food_product
WHERE price IN (SELECT price
                FROM (
                        SELECT category, MAX(price) AS price
                        FROM food_product
                        GROUP BY category
                ) AS tbl)
AND category IN ('과자', '국', '김치', '식용유')
ORDER BY price DESC;



