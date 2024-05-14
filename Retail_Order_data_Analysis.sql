--select * from orders_data
--suggestion better to create a table manually to restrict highest datatype allocation.

--1) Find Top 10 highest revenue generating products

select top 10 product_id,sum(sale_price) sales from orders_data
group by product_id
order by 2 desc

--2) Find Top 5 highest selling products in each region

--select * from orders_data
select * from (
select product_id,region,rank() over(partition by region order by sales desc) ran from (
						select product_id,region,sum(sale_price) sales from orders_data
						group by product_id,region
						) a
			)b
where ran<=5


--3) find month over month growth comparison for 2022 and 2023 sales eg : jan 2022 vs jan 2023

with cte as(
select sum(sale_price) sales,datepart(month,order_date) mon,datepart(year,order_date) yy
from orders_data
group by datepart(year,order_date),datepart(month,order_date)
)

select * from(
select mon order_month,round(sales,2) c_sales,round(lag(sales) over(partition by mon order by yy),2) prev_sales from cte) x
where prev_sales is not null;

--4) for each category which month had highest sales

select * from (
select *,rank() over(partition by category order by sales desc) rn from (
select category,month(order_date) mn,year(order_date) yy,sum(sale_price) sales
from orders_data
group by category,year(order_date),month(order_date)) xd)yd
where rn=1


-- 5)which sub category had highest growth (%) by profit in 2023 compare to 2022
select top 1 sub_category,(s2023-s2022)/s2022*100 growth from (
select sub_category, sum(case when yy=2022 then pro end) s2022,sum(case when yy=2023 then pro end) s2023 
from(
select sub_category,year(order_date) yy,sum(profit) pro from orders_data
group by sub_category,year(order_date)
) v
group by sub_category) s
where s2023>s2022
order by growth desc

