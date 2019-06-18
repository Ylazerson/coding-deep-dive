-- B''H --




select   county_name, 
         fips_class_code 
from     `data-science-course-226116.sql_lessons.counties` 
where    state_abbreviation = 'VA'
  and    county_fips_code   in ('0510', '0515') 