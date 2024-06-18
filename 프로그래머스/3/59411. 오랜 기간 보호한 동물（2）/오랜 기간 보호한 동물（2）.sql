# 입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름 조회
# 결과는 보호 기간이 긴 순으로 조회

SELECT AI.animal_id, AI.name
FROM animal_ins AI
JOIN animal_outs AO ON AI.animal_id = AO.animal_id
ORDER BY DATEDIFF(AO.datetime, AI.datetime) DESC
LIMIT 2;