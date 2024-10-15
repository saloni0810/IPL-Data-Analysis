-- Q8. WHAT IS THE AVERAGE NUMBER OF BOUNDARIES HIT BY EACH TEAM IN EACH SEASON?
select season,batting_team,avg(fours+sixes) as average_boundaries
from(select season,match_id,batting_team,
	sum(case when batsman_runs=4 then 1 else 0 end)as fours,
	sum(case when batsman_runs=6 then 1 else 0 end) as sixes
	from deliveries,matches 
	where deliveries.match_id=matches.id
	group by season,match_id,batting_team) as team_bounsaries
group by season,batting_team;