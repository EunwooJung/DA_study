SELECT COUNT(*) AS fish_count,
       fish_name
FROM fish_info FI
JOIN fish_name_info FNI ON FI.fish_type = FNI.fish_type
GROUP BY fish_name
ORDER BY fish_count DESC;