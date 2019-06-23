# B"H


URL: https://cloud.google.com/bigquery/docs/reference/standard-sql/functions-and-operators


---

### Some math functions:
```sql

select   abs(-12), -- removes sign,
         sqrt(16),
         pow(2, 3),
         log10(1000000),
         log10(3600000),
         greatest(5, 3, 9),
         least(5, 3, 9),
         9 / 3,
         -- div(9.0, 2.0), -- integer division
         safe_divide(9,2),
         safe_divide(9,0),
         -- ----------------------------------
         div(9, 2),
         mod(9, 2),
         round(14.3333, 1),
         round(14.3933, 1),
         trunc(14.3933, 1) do_trunc,
         ceil(14.3),
         floor(14.3)
         -- ----------------------------------
         
```

---

### Hashing functions

```sql
select   sha512('djkfhakljfhlkfjhk,jhakljdhflkhflkasjdhfkljadsfhkljdfhkljasdhfiewuhkbncvku4h398d87398(*&*('),
         sha512('ejkfhakljfhlkfjhk,jhakljdhflkhflkasjdhfkljadsfhkljdfhkljasdhfiewuhkbncvku4h398d87398(*&*(')
```

---

```sql
select   coalesce(null, null, 5, 7, null)

select   headline_1, 
         campaign, 
         account, 
         coalesce(headline_1, campaign, account) zz 
from     `data-science-course-226116.sql_lessons.google_ads` 
limit    5

```


```sql
select   concat('a', 'b', 'zzzzz')

select   concat(null, null, '5', '7', null)

select   headline_1, 
         campaign, 
         account, 
         --
         concat(
             headline_1, 
             campaign, 
             account
         ) fields_concat_with_nulls,
         --
         concat(
             ifnull(headline_1, ''), 
             ifnull(campaign, ''), 
             ifnull(account, '')
         ) fields_concat
         --
from     `data-science-course-226116.sql_lessons.google_ads` 
limit    5
```


---


```sql
SELECT   *
FROM     `data-science-course-226116.sql_lessons.arky_family` 
where    lower(name) like '%a%a%'

SELECT   *
FROM     `data-science-course-226116.sql_lessons.arky_family` 
where    lower(name) like '%e__e%'

```


---
### Random SQL stuff:

```sql
SELECT   name,
         --
         case when name = 'Chaigi' then 'blue' else 'yellow' end zz,
         --
         case when lower(name) like '%i' then 'chicken' else 'beef' end zz_top,
         --
         case when ends_with(name, 'i') then 'yep' else 'no' end zz_e
         --
FROM     `data-science-course-226116.sql_lessons.arky_family` 

--

SELECT   name,
         length(name) zz,
         --
         birthday, 
         lpad(birthday, 20, '-(*') zzz
         --
FROM     `data-science-course-226116.sql_lessons.arky_family` 

--


with stg as
(
SELECT   '       hi  ' name,  'xxxxxxxx95xx' name_2
)
select concat('z',name, 'z')  zz,
       concat('z',trim(name), 'z') szzz,
       --
       trim(name_2, 'x') uuu
from   stg
```