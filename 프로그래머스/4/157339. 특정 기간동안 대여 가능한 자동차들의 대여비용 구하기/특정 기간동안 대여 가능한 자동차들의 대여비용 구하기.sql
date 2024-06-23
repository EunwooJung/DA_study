-- 자동차 종류가 '세단' 또는 'SUV' 인 자동차
-- 2022년 11월 1일부터 2022년 11월 30일까지 대여 가능
-- 30일간의 대여 금액이 50만원 이상 200만원 미만인 자동차
-- 자동차 ID, 자동차 종류, 대여 금액(컬럼명: FEE) 리스트를 출력

-- 결과는 대여 금액을 기준으로 내림차순 정렬
-- 대여 금액이 같은 경우 자동차 종류를 기준으로 오름차순 정렬
-- 자동차 종류까지 같은 경우 자동차 ID를 기준으로 내림차순 정렬

SELECT C.CAR_ID AS CAR_ID
     , C.CAR_TYPE AS CAR_TYPE
     , FLOOR(C.DAILY_FEE * 30 * (1 - P.DISCOUNT_RATE/100)) AS FEE
FROM CAR_RENTAL_COMPANY_CAR AS C
    INNER JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS P ON C.CAR_TYPE = P.CAR_TYPE
                                                    AND P.DURATION_TYPE = '30일 이상'
                                                    AND C.CAR_TYPE IN ('세단', 'SUV')
    LEFT JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY AS H ON C.CAR_ID = H.CAR_ID
                                                    AND H.END_DATE >= '2022-11-01'
                                                    AND H.START_DATE <= '2022-11-30'
WHERE ROUND(C.DAILY_FEE * 30 * (1 - P.DISCOUNT_RATE/100)) BETWEEN 500000 AND 1999999
  AND H.CAR_ID IS NULL
ORDER BY FEE DESC
       , CAR_TYPE
       , CAR_ID DESC;
