-- Q12. HOW MANY MATCHES RESULTED IN A WIN FOR EACH TEAM IN EACH CITY?
select m.city,case when m.team1=m.winner then m.team1
when m.team2=m.winner then m.team2
else 'draw'
end as winning_team,
count(*) as wins
from matches as m
join deliveries as d on d.match_id=m.id
where m.result!='Tie'
group by m.city,winning_team;