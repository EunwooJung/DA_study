SELECT a.flavor
FROM first_half a
LEFT JOIN icecream_info b
ON a.flavor = b.flavor
WHERE total_order > 3000 AND ingredient_type = 'fruit_based'
ORDER BY total_order DESC;