create table world1(name varchar(20), contitent varchar(20), area double, population bigint, gdp bigint);
insert into world1(name, contitent, area, population, gdp) values('Afghanistan', 'Asia', 652230, 25500100, 20343000), ('Albania', 'Europe', 28748, 2831741, 12960000),  ('Algeria', 'Africa', 2381741, 37100000, 188681000), ('Andorra', 'Europe', 468, 78115, 3712000), ('Angola', 'Africa', 1246700, 20609294, 100990000);
											   
                                              
select name, population, area
from World1
where area > 3000000 or population > 25000000;
												
                                                

                                               
                                               