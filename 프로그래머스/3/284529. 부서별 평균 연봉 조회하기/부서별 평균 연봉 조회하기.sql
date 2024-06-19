-- 부서별 평균 연봉을 조회
-- 부서 ID, 영문 부서명, 평균 연봉을 조회
-- 평균연봉은 소수점 첫째 자리에서 반올림하고 컬럼명은 AVG_SAL
-- 결과는 부서별 평균 연봉을 기준으로 내림차순 정렬

SELECT HD.dept_id, dept_name_en,
       ROUND(AVG(sal), 0) AS avg_sal
FROM hr_department HD
JOIN hr_employees HE ON HD.dept_id = HE.dept_id
GROUP BY HD.dept_id
ORDER BY avg_sal DESC;