# 일부 동물의 입양일이 잘못 입력
# 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회
# 보호 시작일이 빠른 순으로 조회

SELECT AI.animal_id, AI.name
FROM animal_ins AI
JOIN animal_outs AO ON AI.animal_id = AO.animal_id
WHERE AI.datetime > AO.datetime
ORDER BY AI.datetime;