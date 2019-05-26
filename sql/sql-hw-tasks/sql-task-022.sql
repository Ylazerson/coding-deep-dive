-- B"H --


with stg as
(
select   lower(county) county, 
         -- ---------------------------------------------- 
         sum(bottles_sold) over (    
              partition by  county         
              order by      date
              rows between 10 preceding and current row
          ) last_10_bottle_sales
         -- ---------------------------------------------- 
from     `bigquery-public-data.iowa_liquor_sales.sales` 
         -- ----------------------------------------------
where    lower(county) in ('polk', 'scott', 'clinton')
),
-- -------------------------------------------------------
ranks as
(
select   county, 
         -- ----------------------------------------------
         row_number() over (partition by county order by last_10_bottle_sales desc) top_last_10_bottle_sales,
         -- ----------------------------------------------
         last_10_bottle_sales
         -- ----------------------------------------------
from     stg
)
select   top_last_10_bottle_sales,
         -- ----------------------------------------------
         sum(case when county = 'clinton' then last_10_bottle_sales else 0 end) clinton,
         sum(case when county = 'polk'    then last_10_bottle_sales else 0 end) polk,
         sum(case when county = 'scott'   then last_10_bottle_sales else 0 end) scott
         -- ----------------------------------------------
from     ranks
where    top_last_10_bottle_sales <= 3
group by top_last_10_bottle_sales

