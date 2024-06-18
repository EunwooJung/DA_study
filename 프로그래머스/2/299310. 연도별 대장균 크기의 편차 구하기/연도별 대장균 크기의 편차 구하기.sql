# 분화된 연도(YEAR), 분화된 연도별 대장균 크기의 편차(YEAR_DEV), 대장균 개체의 ID(ID) 출력
# 분화된 연도별 대장균 크기의 편차 = 분화된 연도별 (가장 큰 대장균의 크기 - 각 대장균의 크기)
# 연도, 대장균 크기의 편차에 대해 오름차순으로 정렬

SELECT sub.year,
       (sub.max_size - sub.size_of_colony) AS year_dev,
       sub.id
FROM (
        SELECT YEAR(differentiation_date) AS year,
               size_of_colony,
               MAX(size_of_colony) OVER (PARTITION BY year(differentiation_date)) AS max_size,
               id
        FROM ecoli_data
     ) AS sub
ORDER BY year, year_dev;
