-- 2022년 1월의 도서 판매 데이터를 기준
-- 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가)
-- 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트
-- 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬

SELECT B.author_id, author_name, category,
       SUM(price * sales) AS sales
FROM book B
JOIN author A ON B.author_id = A.author_id
JOIN book_sales S ON B.book_id = S.book_id
WHERE sales_date LIKE '%2022-01-%'
GROUP BY B.author_id, category
ORDER BY B.author_id, category DESC;