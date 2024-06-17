SELECT CONCAT(QUARTER(differentiation_date), 'Q') AS QUARTER,
       COUNT(id) AS ECOLI_COUNT
FROM ecoli_data
GROUP BY quarter
ORDER BY quarter;