with mock_data as
(
select 'a' area, 'b'  first_name, 'c'  last_name union all
select 'a' area, 'b'  first_name, 'c'  last_name union all
--
select 'a' area, null first_name, 'c'  last_name union all
select 'a' area, null first_name, 'c'  last_name union all
select 'a' area, null first_name, 'c'  last_name union all
--
select 'a' area, 'x'  first_name, 'c'  last_name union all
--
select 'a' area, null first_name, null last_name union all
--
select 'a' area, ' '  first_name, ' '  last_name 
)
-- ---------------------------------------------
select   area, 
         first_name, 
         last_name,
         -- ------------------------------------
         concat(area, first_name, last_name) concat_plain,
         -- ------------------------------------
         coalesce(area,       '<field area>')       area_coalesce,
         coalesce(first_name, '<field first_name>') first_name_coalesce,
         coalesce(last_name,  '<field last_name>')  last_name_coalesce,
         -- ------------------------------------
         concat(
             coalesce(area,       '<field area>'),       
             coalesce(first_name, '<field first_name>'), 
             coalesce(last_name,  '<field last_name>')  
         ) coalesce_concat
from     mock_data