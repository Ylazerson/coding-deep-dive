# B''H

## [Main BigQuery Reference](https://cloud.google.com/bigquery/docs/reference/standard-sql/functions-and-operators)

---

## `substr`

```sql
substr(fips_class_code, 2, 1)
```

## `case`
- Acts as an `IF` statement

```sql

         case cast(substr(fips_class_code, 2, 1) as int64)
             when 1 then 'One'
             when 2 then 'Two'
             when 3 then 'Three'
             when 4 then 'Four'
             when 5 then 'Five'
             when 6 then 'Six'
             when 7 then 'Seven'
         end char2_desc

```
