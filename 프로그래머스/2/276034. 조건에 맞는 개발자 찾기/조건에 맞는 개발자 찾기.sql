# Python이나 C# 스킬을 가진 개발자의 정보를 조회
# 조건에 맞는 개발자의 ID, 이메일, 이름, 성을 조회
# 결과는 ID를 기준으로 오름차순 정렬

SELECT DISTINCT(id), email, first_name, last_name
FROM developers D
JOIN skillcodes S ON S.code & D.skill_code = S.code
WHERE S.name IN ('C#', 'Python')
ORDER BY id;