# 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회
# 결과는 보호 시작일 순으로 조회

SELECT AI.name, AI.datetime
FROM animal_ins AI
LEFT JOIN animal_outs AO ON AI.animal_id = AO.animal_id
WHERE AO.animal_id IS NULL
ORDER BY AI.datetime
LIMIT 3;