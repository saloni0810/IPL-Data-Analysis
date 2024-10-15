-- Q7. WHAT IS THE AVERAGE PERCENTAGE OF BOUNDARIES (FOURS AND SIXES COMBINED) HIT BY EACH BATSMAN?
select batsman,avg(case when batsman_runs=4 or batsman_runs=6
					then 1 else 0 end)*100 as average_boundaries
from deliveries group by batsman;