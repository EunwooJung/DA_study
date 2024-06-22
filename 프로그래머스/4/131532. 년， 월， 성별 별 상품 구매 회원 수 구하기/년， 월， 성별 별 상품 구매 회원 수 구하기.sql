-- 년, 월, 성별 별로 상품을 구매한 회원수를 집계
-- 년, 월, 성별을 기준으로 오름차순 정렬
-- 성별 정보가 없는 경우 결과에서 제외

SELECT YEAR(sales_date) AS year,
       MONTH(sales_date) AS month,
       gender,
       COUNT(DISTINCT S.user_id) AS users
FROM user_info I
JOIN online_sale S ON I.user_id = S.user_id
WHERE gender IS NOT NULL
GROUP BY year, month, gender
ORDER BY year, month, gender;