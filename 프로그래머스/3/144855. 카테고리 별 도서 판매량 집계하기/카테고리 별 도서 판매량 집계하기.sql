# 2022년 1월의 카테고리 별 도서 판매량을 합산
# 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트 출력
# 카테고리명 기준으로 오름차순 정렬

SELECT category, SUM(sales) AS total_sales
FROM book B
JOIN book_sales BS ON B.book_id = BS.book_id
WHERE sales_date LIKE '%2022-01-%'
GROUP BY category
ORDER BY category;
