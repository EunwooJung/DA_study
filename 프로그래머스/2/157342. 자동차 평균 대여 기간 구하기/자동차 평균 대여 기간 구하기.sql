SELECT car_id,
       ROUND(AVG(date), 1) AS average_duration
FROM (
        SELECT car_id,
               DATEDIFF(end_date, start_date) + 1 AS date
        FROM car_rental_company_rental_history
     ) AS car_table
GROUP BY car_id
HAVING average_duration >= 7
ORDER BY average_duration DESC, car_id DESC;