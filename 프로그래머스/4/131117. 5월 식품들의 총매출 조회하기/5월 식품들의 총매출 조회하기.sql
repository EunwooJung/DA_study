-- 생산일자가 2022년 5월인 식품
-- 식품 ID, 식품 이름, 총매출
-- 총매출을 기준으로 내림차순 정렬
-- 총매출이 같다면 식품 ID를 기준으로 오름차순 정렬

SELECT P.product_id, product_name, SUM(price * amount) AS Total_sales
FROM food_product P
JOIN food_order O ON P.product_id = O.product_id
WHERE produce_date LIKE '%2022-05%'
GROUP BY P.product_id
ORDER By Total_sales DESC, P.product_id;