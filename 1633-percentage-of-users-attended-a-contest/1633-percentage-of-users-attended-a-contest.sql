/* Write your PL/SQL query statement below */

select contest_id, round((count(user_id)/(select count(*) from users))*100,2) as percentage
from register
group by contest_id
order by count(user_id) desc, contest_id asc;