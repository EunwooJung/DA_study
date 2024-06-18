# USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 완료된 중고 거래의 총금액이 70만 원 이상
# 회원 ID, 닉네임, 총거래금액을 조회
# 총거래금액을 기준으로 오름차순 정렬

SELECT user_id,
       nickname,
       SUM(price) AS total_sales
FROM used_goods_user UGU
JOIN used_goods_board UGB ON UGU.user_id = UGB.writer_id
  AND status = 'DONE'
GROUP BY user_id
HAVING total_sales >= 700000
ORDER BY total_sales;