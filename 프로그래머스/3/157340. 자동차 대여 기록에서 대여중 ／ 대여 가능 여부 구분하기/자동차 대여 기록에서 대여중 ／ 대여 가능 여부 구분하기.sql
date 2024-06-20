-- 2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시
-- 대여 중이지 않은 자동차인 경우 '대여 가능'을 표시
-- 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'으로 표시
-- END DATE가 16일이거나, START DATE가 16일 이전이거나
-- 컬럼(컬럼명: AVAILABILITY)을 추가
-- 자동차 ID와 AVAILABILITY 리스트를 출력
-- 결과는 자동차 ID를 기준으로 내림차순 정렬

select car_id,case
                    when car_id  in(
                    select car_id
                    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
                    where '2022-10-16' between start_date and end_date) then '대여중'
                    else  '대여 가능'
                    end as "AVAILABILITY"
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group  by 1,2
order by car_id desc;