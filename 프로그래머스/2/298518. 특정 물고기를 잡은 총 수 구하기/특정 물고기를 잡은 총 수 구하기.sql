SELECT COUNT(id) AS fish_count
FROM fish_name_info N
JOIN fish_info I ON N.fish_type = I.fish_type
WHERE fish_name IN ('BASS', 'SNAPPER');
