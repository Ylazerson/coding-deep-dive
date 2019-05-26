# B''H


## SQL Task 22

---

### Task
- The company **Shmorgisboorg Labs** is analyzing the liquor sales in Iowa for **year 2017**.
- They want to see the 3 day rolling sum of liquor bottle sales.
- However, they just want to see that top three.
- They only want to see the data for the Polk, Scott, and Clinton counties.
- They want to see it pivoted.

---

- See: 
    - `bigquery-public-data.iowa_liquor_sales.sales` 
    - https://cloud.google.com/bigquery/docs/reference/standard-sql/date_functions#extract

---

- The result should look like this:

|top_rolling_3_day_sum_of_bottle_sales|clinton|polk|scott|
|---|---|---|---|
|1|8609|130401|47712|
|2|7484|123933|45716|
|3|7299|121511|45500|


---
#### To get you started on right track, see this query:

```sql

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
)
select   *
from     day_level_data
order by 1, 2, 3

```
