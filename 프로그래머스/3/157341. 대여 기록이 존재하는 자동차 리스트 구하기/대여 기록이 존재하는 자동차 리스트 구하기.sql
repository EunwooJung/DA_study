# CAR_RENTAL_COMPANY_CAR 테이블과 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 자동차 종류가 '세단'인 자동차
# 10월에 대여를 시작한 기록이 있는 자동차 ID 리스트를 출력
# 자동차 ID 리스트는 중복이 없어야 하며, 자동차 ID를 기준으로 내림차순 정렬

SELECT DISTINCT(CR.car_id)
FROM car_rental_company_car CR
JOIN car_rental_company_rental_history CRH ON CR.car_id = CRH.car_id
WHERE car_type = '세단'
  AND start_date LIKE '%2022-10-%'
ORDER BY CR.car_id DESC;
