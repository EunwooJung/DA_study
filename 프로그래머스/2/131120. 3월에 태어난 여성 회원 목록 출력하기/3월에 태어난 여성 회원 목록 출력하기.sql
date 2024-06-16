SELECT member_id, member_name, gender,
       DATE_FORMAT(date_of_birth, '%Y-%m-%d') AS date_of_birth
FROM member_profile
WHERE tlno IS NOT NULL
  AND gender = 'W'
  AND date_of_birth LIKE '%-03-%'
ORDER BY member_id;