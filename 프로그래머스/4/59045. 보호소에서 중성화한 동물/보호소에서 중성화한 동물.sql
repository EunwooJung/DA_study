-- 보호소에서 중성화 수술을 거친 동물 정보
-- 보호소에 들어올 당시에는 중성화 되지 않았지만, 보호소를 나갈 당시에는 중성화
-- 동물의 아이디와 생물 종, 이름을 조회하는 아이디 순으로 조회


SELECT animal_id, animal_type, name
FROM animal_ins
WHERE animal_id IN (
                    SELECT animal_id
                    FROM animal_outs
                    WHERE sex_upon_outcome LIKE '%Spayed%'
                       OR sex_upon_outcome LIKE '%Neutered%'
   )
AND sex_upon_intake LIKE '%Intact%'
ORDER BY animal_id;