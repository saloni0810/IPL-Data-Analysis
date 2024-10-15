-- Q17. WHICH BATSMAN HAS SCORED THE MOST RUNS IN A SINGLE MATCH?
select m.season,m.id as match_no,d.batsman, sum(d.batsman_runs) as total_runs
from matches as m
join deliveries as d on d.match_id=m.id
group by m.season,m.id,d.batsman
order by total_runs desc
limit 1;