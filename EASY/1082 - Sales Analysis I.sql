create table Product_1082(product_id int, product_name varchar(10), unit_price double);
insert into Product_1082(product_id, product_name, unit_price) values(1, 'S8', 1000), (2, 'G4', 800), (3, 'iphone', 1400);

create table Sales_1082(seller_id int, product_id int, buyer_id int, sale_date date, quantity int, price double);
insert into Sales_1082(seller_id, product_id, buyer_id, sale_date, quantity, price) values(1, 1, 1, '2019-01-21', 2, 2000), (1, 2, 2, '2019-02-17', 1, 800), (2, 2, 3, '2019-06-02', 1, 800), (3, 3, 4, '2019-05-13', 2, 2800);

select distinct seller_id from Sales_1082
group by seller_id
having sum(price)=(select sum(price) total_price 
from Sales_1082
group by seller_id
order by total_price desc
limit 1);


