-- B''H --

with stg as
(
select   account,                           
         day,
         cost,               
         -- -------------------------------------------------
         avg(cost) over (
             partition by  account
             order by      account_day_seq_no
             range between 3 preceding and current row
         ) moving_avg_4_days         
         -- -------------------------------------------------
from     `data-science-course-226116.sql_lessons.google_ads_etl_step_2` 
         -- -------------------------------------------------
),
stg2 as
(
select   *,
         -- -------------------------------------------------         
         dense_rank() over(
             partition by account
             order by     moving_avg_4_days desc
         ) account_moving_avg_4_days_dense_rank       
         -- -------------------------------------------------
from     stg
)
select   *
from     stg2
where    account_moving_avg_4_days_dense_rank = 1
order by account
         
         

