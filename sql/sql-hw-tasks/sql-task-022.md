# B''H


## SQL Task 22

---

### Task
- The company **Shmorgisboorg Labs** is analyzing the liquor sales in Iowa.
- They want to see the rolling sum of last 10 liquor bottle sales.
- However, they just want to see that top three.
- They only want to see the data for the Polk, Scott, and Clinton counties.
- They want to see it pivoted.

---

- See `bigquery-public-data.iowa_liquor_sales.sales` 
- The result should look like this:

|top_last_10_bottle_sales|clinton|polk|scott|
|---|---|---|---|
|1|3972|15143|11199|
|2|3882|15131|6887|
|3|2754|15128|6878|
