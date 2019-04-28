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
         coalesce(area,       '<null value here>')       area_coalesce,
         coalesce(first_name, '<null value here>') first_name_coalesce,
         coalesce(last_name,  '<null value here>')  last_name_coalesce,
         coalesce(zip,        '<null value here>')  zip_coalesce,
         -- ------------------------------------
         concat(
             coalesce(area,       '<null value here>'),       
             coalesce(first_name, '<null value here>'), 
             coalesce(last_name,  '<null value here>'),
             coalesce(zip,  '<null value here>')    
         ) coalesce_concat
from     mock_data