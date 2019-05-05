-- B''H --


-- --------------------------------------------------------------------
-- INCOMPLETE QUERY, JUST TO HIGHLIGHT WHAT SECOND STEP IS DOING
with unpivoted as
(
select   91 id, 2015 year, 3.0 payment_amount union all
select   91 id, 2015 year, 3.0 payment_amount union all
select   91 id, 2016 year, 3.0 payment_amount union all
--
select   92 id, 2015 year, 3.0 payment_amount union all
select   92 id, 2016 year, 3.0 payment_amount union all
select   92 id, 2016 year, 3.0 payment_amount 
)
-- -----------------------------------------------------
select   id,
         case when year = 2015 then payment_amount else 0 end payment_amount_2015,
         case when year = 2016 then payment_amount else 0 end payment_amount_2016
from     unpivoted
-- --------------------------------------------------------------------



-- --------------------------------------------------------------------
-- COMPLETE QUERY
with unpivoted as
(
select   91 id, 2015 year, 3.0 payment_amount union all
select   91 id, 2015 year, 3.0 payment_amount union all
select   91 id, 2016 year, 3.0 payment_amount union all
--
select   92 id, 2015 year, 3.0 payment_amount union all
select   92 id, 2016 year, 3.0 payment_amount union all
select   92 id, 2016 year, 3.0 payment_amount 
)
-- -----------------------------------------------------
select   id,
         sum(case when year = 2015 then payment_amount else 0 end) payment_amount_2015,
         sum(case when year = 2016 then payment_amount else 0 end) payment_amount_2016
from     unpivoted
group by id
order by id
-- --------------------------------------------------------------------





-- --------------------------------------------------------------------
-- Same thing but with strings
-- NOTE: how with strings you need to be very careful because MAX/MIN
--       might not be what your company wants from the query.
with unpivoted as
(
select   91 id, 2015 year, 'Moshe' boss_name union all
select   91 id, 2015 year, 'Yossi' boss_name union all
select   91 id, 2016 year, 'Moshe' boss_name union all
--
select   92 id, 2015 year, 'Moshe' boss_name union all
select   92 id, 2016 year, 'Moshe' boss_name union all
select   92 id, 2016 year, 'Chaim' boss_name 
)
-- -----------------------------------------------------
select   id,
         max(case when year = 2015 then boss_name else null end) payment_amount_2015,
         max(case when year = 2016 then boss_name else null end) payment_amount_2016
from     unpivoted
group by id
order by id
-- --------------------------------------------------------------------




