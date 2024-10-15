-- Q9. WHAT IS THE HIGHEST PARTNERSHIP (RUNS) FOR EACH TEAM IN EACH SEASON?
select season,batting_team,max(total_runs) as highest_partnership
from(select season,batting_team,partnership,sum(total_runs) as total_runs
	from(select season,match_id,batting_team, over_no,
		sum(batsman_runs) as partnership,sum(batsman_runs)+sum(extra_runs) as total_runs
		from deliveries,matches where deliveries.match_id=matches.id
		group by season,match_id,batting_team, over_no) as team_scores
	group by season,batting_team,partnership) as highest_partnership
group by season,batting_team; 

