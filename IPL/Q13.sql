-- Q13. HOW MANY TIMES DID EACH TEAM WIN THE TOSS IN EACH SEASON?
select season,toss_winner,count(*) as toss_wins
from matches group by season,toss_winner;