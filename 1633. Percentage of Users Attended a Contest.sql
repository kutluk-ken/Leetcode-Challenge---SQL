SELECT DISTINCT r.contest_id, round(((count(r.user_id)/(select count(user_id) from Users))*100),2) as percentage
FROM Register r join Users u on r.user_id = u.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC
