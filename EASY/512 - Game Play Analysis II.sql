create table Activity_512(player_id int, device_id int, event_date date, games_played int);
insert into Activity_512(player_id, device_id, event_date, games_played) values(1, 2, '2016-03-01', 5), (1, 2, '2016-05-02', 6), (2, 3, '2017-06-25', 1), (3, 1, '2016-03-02', 0), (3, 4, '2018-07-03', 5);

/*Subquery*/
select player_id, device_id
from Activity_512
where (player_id, event_date) in
    (select player_id, min(event_date)
    from Activity_512 
    group by player_id);
    

