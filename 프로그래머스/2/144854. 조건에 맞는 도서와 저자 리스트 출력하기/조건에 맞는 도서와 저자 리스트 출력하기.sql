SELECT book_id, author_name,
       DATE_FORMAT(published_date, '%Y-%m-%d') AS PUBLISHED_DATE
FROM book B
JOIN author A ON B.author_id = A.author_id
WHERE category = '경제'
ORDER BY published_date;