# FOOD_ORDER 테이블에서 5월 1일을 기준으로 주문 ID, 제품 ID, 출고일자, 출고여부를 조회
# 출고여부는 5월 1일까지 출고완료로 이 후 날짜는 출고 대기로 미정이면 출고미정으로 출력
# 결과는 주문 ID를 기준으로 오름차순 정렬

SELECT order_id,
       product_id,
       DATE_FORMAT(out_date, '%Y-%m-%d'),
       CASE
           WHEN out_date <= '2022-05-01' THEN '출고완료'
           WHEN out_date > '2022-05-01' THEN '출고대기'
           ELSE '출고미정'
           END AS '출고여부'
FROM food_order
ORDER BY order_id;