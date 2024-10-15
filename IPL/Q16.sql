-- Q16. WHICH TEAM HAS THE HIGHEST TOTAL SCORE IN A SINGLE MATCH?
select m.season,m.id as match_no,d.batting_team, sum(d.total_runs) as total_score
from matches as m
join deliveries as d on d.match_id=m.id
group by m.season,m.id,d.batting_team
order by total_score desc
limit 1;