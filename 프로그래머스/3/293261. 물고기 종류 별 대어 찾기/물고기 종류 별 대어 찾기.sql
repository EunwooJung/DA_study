-- 물고기 종류 별로 가장 큰 물고기의 ID, 물고기 이름, 길이를 출력
-- ID 컬럼명은 ID, 이름 컬럼명은 FISH_NAME, 길이 컬럼명은 LENGTH
-- 결과는 물고기의 ID에 대해 오름차순 정렬
-- 물고기 종류별 가장 큰 물고기는 1마리만 있으며 10cm 이하의 물고기가 가장 큰 경우는 없습

SELECT id,
       fish_name,
       length
FROM fish_info I
JOIN fish_name_info N ON I.fish_type = N.fish_type
WHERE (I.fish_type, length) IN (
                            SELECT fish_type, MAX(length) AS length
                            FROM fish_info
                            GROUP BY fish_type)
