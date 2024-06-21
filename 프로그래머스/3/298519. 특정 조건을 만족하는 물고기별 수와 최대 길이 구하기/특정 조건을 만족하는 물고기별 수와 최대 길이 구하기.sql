-- 평균 길이가 33cm 이상인 물고기들을 종류별로 분류
-- 잡은 수, 최대 길이, 물고기의 종류를 출력
-- 10cm이하의 물고기들은 10cm로 취급하여 평균 길이
-- 컬럼명은 물고기의 종류 'FISH_TYPE', 잡은 수 'FISH_COUNT', 최대 길이 'MAX_LENGTH'


select
    count(FISH_TYPE) as FISH_COUNT
    ,max(LENGTH) as MAX_LENGTH
    ,FISH_TYPE
from FISH_INFO
group by 3
having avg(ifnull(LENGTH, 10)) >= 33
order by FISH_TYPE