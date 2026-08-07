
select round(count(distinct a.player_id)/(
       select count(distinct player_id)
       from Activity
),2) as fraction
from Activity as a

join(
    select player_id,min(event_date) as first
    from Activity
    group by player_id
) f
on a.player_id=f.player_id and a.event_date=date_add(f.first,interval 1 day)