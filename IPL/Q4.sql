-- Q4. WHAT IS THE NUMBER OF MATCHES WON BY EACH TEAM BATTING FIRST VERSUS BATTING SECOND?
select batting_first,count(*) as matches_won
from(select case when win_by_runs>0 then team1
	else team2
	end as batting_first
	from matches
	where winner!="Tie") as batting_first_teams
group by batting_first;