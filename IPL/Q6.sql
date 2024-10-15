-- Q6. HOW MANY TIMES HAS EACH BATSMAN BEEN DISMISSED BY THE BOWLER 'MALINGA'?
select batsman,count(*) as total_dismissals
from deliveries 
where player_dismissed is not null 
and bowler='SL Malinga'
group by batsman;