-- Q1. WHAT ARE THE TOP 5 PLAYERS WITH THE MOST PLAYER OF THE MATCH AWARDS?
select player_of_match,count(*) as awards_count
from matches group by player_of_match
order by awards_count desc 
limit 5;