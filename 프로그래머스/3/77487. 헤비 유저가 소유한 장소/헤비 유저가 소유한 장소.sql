-- 이 서비스에서는 공간을 둘 이상 등록한 사람을 "헤비 유저"
-- 헤비 유저가 등록한 공간의 정보를 아이디 순으로 조회

SELECT id, name, host_id
FROM places
WHERE host_id IN (
                    SELECT host_id
                    FROM (
                        SELECT host_id,
                               CASE 
                                    WHEN num >= 2 THEN '헤비유저'
                                    ELSE '유저'
                               END AS user
                        FROM (
                                SELECT host_id,
                                       COUNT(host_id) AS num
                                FROM places
                                GROUP BY host_id
                        ) AS tbl_user1
                        WHERE num >= 2
                    ) AS tbl_heavy_user
)
ORDER BY id;

