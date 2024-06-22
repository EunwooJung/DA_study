-- 사원별 성과금 정보를 조회
-- 사번, 성명, 평가 등급, 성과금을 조회
-- 평가등급의 컬럼명은 GRADE로, 성과금의 컬럼명은 BONUS
-- 결과는 사번 기준으로 오름차순 정렬

WITH tbl_grade AS (
                    SELECT emp_no, emp_name,
                            CASE
                                   WHEN scores >= 96 THEN 'S'
                                   WHEN scores >= 90 THEN 'A'
                                   WHEN scores >= 80 THEN 'B'
                                   ELSE 'C'
                            END AS grade,
                            sal
                    FROM (
                            SELECT E.emp_no, emp_name, year, AVG(score) AS scores, sal
                            FROM hr_employees E
                            JOIN hr_grade G ON E.emp_no = G.emp_no
                            GROUP BY emp_no, emp_name, year
                    ) AS tbl_scores
)
SELECT emp_no, emp_name, grade,
        CASE
            WHEN  grade = 'S' THEN (sal * 0.2)
            WHEN  grade = 'A' THEN (sal * 0.15)
            WHEN  grade = 'B' THEN (sal * 0.1)
            WHEN  grade = 'C' THEN (sal * 0)
        END AS bonus
FROM tbl_grade
ORDER BY emp_no;
