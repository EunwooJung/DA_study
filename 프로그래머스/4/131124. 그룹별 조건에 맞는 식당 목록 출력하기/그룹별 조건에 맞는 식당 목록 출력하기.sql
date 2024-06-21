-- 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회
-- 회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력되도록 작성
-- 결과는 리뷰 작성일을 기준으로 오름차순
-- 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순 정렬

SELECT member_name,
       review_text,
       DATE_FORMAT(review_date, '%Y-%m-%d') AS review_date
FROM (
        SELECT R.member_id, member_name, review_text, review_date
        FROM rest_review R
        JOIN member_profile M ON R.member_id = M.member_id
) AS tbl_join
WHERE tbl_join.member_id IN (
                              SELECT member_id
                              FROM (
                                    SELECT member_id, COUNT(*)
                                    FROM rest_review
                                    GROUP BY member_id
                                    ORDER BY COUNT(*) DESC
                                    LIMIT 1
                              ) AS tbl_check
)
ORDER BY review_date, review_text;


