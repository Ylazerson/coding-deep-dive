# B"H


```sql
select   age, name
from     `data-science-course-226116.sql_lessons.arky_family` 
where    age > 0 
order by age
```


|SQL Clause Order|SQL Clause|Mandatory|What Happens|What gets passed onto next clause|This Example|
|---|---|---|---|---|---|
|1|**`FROM`**|Y|Identify the table we will pull data from|All **cols** and all **rows**|4 rows X 4 cols|
|2|**`WHERE`**|N|Filtering out certain **rows**|All **cols** but only **rows** that meet there the criteria|3 rows X 4 cols|
|3|**`GROUP BY`**|N|||Skipped|
|4|**`HAVING`**|N|||Skipped|
|5|**`SELECT`**|Y|Defines the output cols for final output|All rows passed into it but only output cols defined here|3 rows X 2 cols|
|6|**`ORDER BY`**|N|Defines how to order the rows of the final output|N/A|N/A|
