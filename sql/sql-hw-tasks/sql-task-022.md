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
|1|1204|15302|3431|
|2|1200|15298|3425|
|3|1198|15296|3425|