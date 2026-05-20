-- E-commerce Data Analysis project
-- Key points to findout form this Data,

-- 1)Find out Categeroy wise total sales
-- 2)Find out Product wise Total sales
-- 3)Find out Region wise total sales
-- 4) Find out Region wise Total Profit
-- 5) Category wise profit 


select * from saless;


use ecommerce;
select * from sale;

select Sales,Category,Region,Quantity,Profit
from sale
where sales>10000
order by sales Desc;

select profit,Sales,Category,Region,Quantity
from sale
where profit>1000
order by profit desc;

select avg(profit) from sale;  -- findout avg profit
select avg(sales) from sale;     -- findout avg sales
select avg(quantity) from sale;   -- findout avg quantity


select distinct region from sale;  -- findout distinct region in data.

select * from sale;
select distinct category from sale;  -- findout unique category of product

drop table sale;

select * from sale;
drop table sales;

select * from saless;

select distinct productname from saless;

select profit,category,productname 
from saless
where profit>2000
order by profit desc;

select sales ,category,productname,quantity
from saless
where sales>10000
order by sales;

select distinct  quantity from saless
order by quantity ;

select * from saless
where sales between 10000 and 11000; 

select * from saless
where sales between 5000 and 10000;

select * from saless
where sales>10000 and profit>2000;

select min(sales) from saless;   -- findout minimum sales
select max(sales) from saless;   -- findout maximum sales
select min(profit) from saless;
select max(profit) from saless;

select sum(sales) from saless;  -- findout aggregate sales
select round(sum(profit)) from saless;  -- here we used round() function to roundoff the values

select sum(quantity) from saless;
select * from saless;

select * from saless
order by sales desc;

select * from saless
order by sales ;

select count(profit) from saless;

-- 1) Findout Category wise Total sales

select productname,sum(sales)
from saless
group by productname                  
order by sum(sales) desc;

select * from saless;
insert into saless values('17-05-2026',"FaceWash","Cosmic","North",
                  4, 1000,300);
select * from saless
where category="cosmic";

-- 2) Findout ProductWise Total Sales;

select ProductName,sum(sales)
from saless                   
group by ProductName
order by  sum(sales) desc;

set sql_safe_updates=0;

delete from saless
where category="cosmic";

select * from saless
where category="cosmic";

-- 3) Findout RegionWise Total Sales

select Region,sum(sales)
from saless
group by region
order by sum(sales) desc;

-- 4) Findout RegionWise Total profit

select Region,round(sum(profit))      
from saless                         -- round() function used to round off the values
group by region
order by sum(profit) desc;

-- 5) Findout Category wise total profit

select category,round(sum(profit))
from saless
group by category
order by sum(profit) desc;
