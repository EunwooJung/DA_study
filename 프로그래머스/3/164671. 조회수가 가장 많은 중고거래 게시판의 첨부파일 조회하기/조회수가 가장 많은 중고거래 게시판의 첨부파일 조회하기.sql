-- 조회수가 가장 높은 중고거래 게시물에 대한 첨부파일 경로를 조회
-- 첨부파일 경로는 FILE ID를 기준으로 내림차순 정렬
-- 파일이름은 파일 ID, 파일 이름, 파일 확장자로 구성되도록 출력
-- 조회수가 가장 높은 게시물은 하나만 존재


SELECT CONCAT('/home/grep/src/',
               F.board_id,
               '/',
               file_id,
               file_name,
               file_ext
       ) AS file_path
FROM used_goods_file F
JOIN used_goods_board B ON F.board_id = B.board_id
WHERE B.board_id IN (
            SELECT board_id
            FROM used_goods_board
            WHERE status = 'done'
            AND views = (SELECT MAX(views) FROM used_goods_board WHERE status = 'done')
           )
ORDER BY file_path DESC;