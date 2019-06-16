# B"H


```sql
select   account, 
         sum(clicks)      number_of_clicks,
         avg(cost)        avg_cost,
         sum(cost)        sum_cost,
         sum(impressions) sum_impressions
         -- --------------------------------------
from     `data-science-course-226116.sql_lessons.google_ads_etl_step_2` 
where    pk_id <= 100000
group by account
having   sum(clicks) > 1300
order by avg_cost desc
```


|SQL Clause Order|SQL Clause|Mandatory|What Happens|What gets passed onto next clause|This Example|
|---|---|---|---|---|---|
|1|**`FROM`**|Y|Identify the table we will pull data from|All **cols** and all **rows**|277,036 rows X 53 cols|
|2|**`WHERE`**|N|Filtering out certain **rows**|All **cols** but only **rows** that meet there the criteria|100,000 rows X 53 cols|
|3|**`GROUP BY`** *|N|Changing the **level-of-grain**||116 rows X any of the other 52 cols as long as you aggregate/shrink it|
|4|**`HAVING`**|N|Filters out rows based on aggregate data||4 rows X any of the other 52 cols as long as you aggregate/shrink it|
|5|**`SELECT`**|Y|Defines the output cols for final output|All rows passed into it but only output cols defined here|4 rows X 5 cols|
|6|**`ORDER BY`**|N|Defines how to order the rows of the final output|N/A|N/A|

- **There will only be one record per unique value in whatever fields are in the GROUP BY clause**