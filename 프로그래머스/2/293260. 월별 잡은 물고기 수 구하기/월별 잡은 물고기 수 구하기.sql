SELECT COUNT(id) AS fish_count,
       MONTH(time) AS month
FROM fish_info
GROUP BY month
HAVING fish_count IS NOT NULL
ORDER BY month;