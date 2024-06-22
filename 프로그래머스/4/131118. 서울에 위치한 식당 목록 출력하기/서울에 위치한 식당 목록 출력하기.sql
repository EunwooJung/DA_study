-- 서울에 위치한 식당들의 식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수
-- 리뷰 평균점수는 소수점 세 번째 자리에서 반올림
-- 평균점수를 기준으로 내림차순 정렬해주시고, 평균점수가 같다면 즐겨찾기수를 기준으로 내림차순 정렬

SELECT I.rest_id, rest_name, food_type,
       favorites, address,
       ROUND(AVG(review_score), 2) AS scores
FROM rest_info I
JOIN rest_review R ON I.rest_id = R.rest_id
WHERE ADDRESS LIKE '서울%'
GROUP BY I.rest_id
ORDER BY scores DESC, favorites DESC;