-- 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회

SELECT AO.animal_id, AO.name
FROM animal_outs AO
WHERE AO.animal_id NOT IN (
      SELECT animal_id FROM animal_ins)
ORDER BY AO.animal_id, AO.name;