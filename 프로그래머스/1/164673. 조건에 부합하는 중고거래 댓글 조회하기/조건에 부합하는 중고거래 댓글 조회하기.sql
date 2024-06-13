SELECT title,
       A.board_id,
       reply_id,
       B.writer_id,
       B.contents,
       DATE_FORMAT(B.created_date, '%Y-%m-%d') AS CREATED_DATE
FROM used_goods_board A
INNER JOIN used_goods_reply B
ON A.board_id = B.board_id
WHERE YEAR(A.created_date) = 2022 AND MONTH(A.created_date) = 10
ORDER BY B.created_date, title;