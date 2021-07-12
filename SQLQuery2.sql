with hotels as (
SELECT *
FROM [Project2]..['2018$']
UNION
SELECT *
FROM [Project2]..['2019$']
UNION
SELECT *
FROM [Project2]..['2020$']
)
SELECT *
FROM hotels
left join Project2..market_segment$ as p
	on hotels.market_segment = p.market_segment 
left join Project2..meal_cost$ as c
	on hotels.meal = c.meal


--arrival_date_year,
--hotel,
--sum((stays_in_week_nights + stays_in_weekend_nights)*adr) as revenue		
--FROM hotels
--Group By arrival_date_year, hotel
