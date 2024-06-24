select date_format(s.sales_date,'%Y') year,
       date_format(s.sales_date,'%m') month,
       count(distinct s.user_id) purchased_users,
       round(count(distinct s.user_id)/(select count(distinct user_id) from user_info
       where joined like '2021%'),1) purchased_ratio
from
online_sale s
left join user_info u on s.user_id = u.user_id
where u.joined like '2021%'
group by 1,2
order by 1,2;