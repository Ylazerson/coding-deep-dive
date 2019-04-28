with mock_data as
(
select 'a' area, 'zzz' first_name, 'zsss' last_name, 'zzzz' zip union all
select 'a' area, null first_name, null last_name, '' zip union all
select 'a' area, null first_name, '' last_name, null zip 
)
-- ---------------------------------------------
select   area, 
         first_name, 
         last_name,
         zip,         
         -- ------------------------------------
         coalesce(area,       '<area here>')       area_coalesce,
         coalesce(first_name, '<first_name here>') first_name_coalesce,
         coalesce(last_name,  '<last_name here>')  last_name_coalesce,
         coalesce(zip,        '<zip here>')  zip_coalesce,
         -- ------------------------------------
         concat(
             coalesce(area,       '<area here>'),       
             coalesce(first_name, '<first_name here>'), 
             coalesce(last_name,  '<last_name here>'),
             coalesce(zip,  '<zip here>')    
         ) coalesce_concat
from     mock_data