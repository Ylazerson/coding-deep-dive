-- B"H --




with day_level_data as
(
select   lower(county) county, 
         extract(dayofyear from date) day_of_year,
         -- ---------------------------------------------- 
         sum(bottles_sold) bottles_sold         
         -- ---------------------------------------------- 
from     `bigquery-public-data.iowa_liquor_sales.sales` 
         -- ----------------------------------------------
where    lower(county) in ('polk', 'scott', 'clinton')
  and    extract(year from date) = 2017
         -- ---------------------------------------------- 
group by lower(county), 
         extract(dayofyear from date)    
),
-- -------------------------------------------------------
rolling_view as
(
select   county, 
         day_of_year,
         -- ---------------------------------------------- 
         sum(bottles_sold) over (    
              partition by  county         
              order by      day_of_year
              range between 3 preceding and current row
         ) rolling_3_day_sum_of_bottle_sales
         -- ---------------------------------------------- 
from     day_level_data
),
-- -------------------------------------------------------
ranks as
(
select   county, 
         -- ----------------------------------------------
         row_number() over (partition by county order by rolling_3_day_sum_of_bottle_sales desc) top_rolling_3_day_sum_of_bottle_sales,
         -- ----------------------------------------------
         rolling_3_day_sum_of_bottle_sales
         -- ----------------------------------------------
from     rolling_view
)
select   top_rolling_3_day_sum_of_bottle_sales,
         -- ----------------------------------------------
         sum(case when county = 'clinton' then rolling_3_day_sum_of_bottle_sales else 0 end) clinton,
         sum(case when county = 'polk'    then rolling_3_day_sum_of_bottle_sales else 0 end) polk,
         sum(case when county = 'scott'   then rolling_3_day_sum_of_bottle_sales else 0 end) scott
         -- ----------------------------------------------
from     ranks
where    top_rolling_3_day_sum_of_bottle_sales <= 3
group by top_rolling_3_day_sum_of_bottle_sales

