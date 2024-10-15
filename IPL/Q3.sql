-- Q3. WHAT IS THE AVERAGE STRIKE RATE OF BATSMEN IN THE IPL DATASET?
select avg(strike_rate) as average_strike_rate
from(select batsman,(sum(total_runs)/count(ball))*100 as strike_rate
from deliveries group by batsman)as batsman_stats;