-- 중고 거래 게시물을 3건 이상 등록
-- 사용자 ID, 닉네임, 전체주소, 전화번호를 조회
-- 전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력
-- 전화번호의 경우 xxx-xxxx-xxxx 같은 형태로 하이픈 문자열(-)을 삽입하여 출력
-- 결과는 회원 ID를 기준으로 내림차순 정렬

SELECT user_id, nickname,
       CONCAT(city, ' ', street_address1, ' ', street_address2) AS '전체주소',
       CONCAT(left(tlno, 3), '-', MID(tlno, 4, 4), '-', RIGHT(tlno, 4)) AS '전화번호'
FROM used_goods_board UB
JOIN used_goods_user UU ON UB.writer_id =  UU.user_id
WHERE user_id IN (
      SELECT writer_id
      FROM (
          SELECT writer_id, COUNT(*)
          FROM used_goods_board
          GROUP BY writer_id
          HAVING COUNT(*) >= 3) AS table_condition )
GROUP BY user_id
ORDER BY user_id DESC;

