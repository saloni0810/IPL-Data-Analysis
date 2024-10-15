-- Q2. HOW MANY MATCHES WERE WON BY EACH TEAM IN EACH SEASON?
select season,winner as team,count(*) as matches_won
from matches group by season, winner;