-- B''H --


select   state_abbreviation, county_name, fips_class_code 
from     `data-science-course-226116.sql_lessons.counties` 
where    county_fips_code   in ('0510', '0515') 
order by state_abbreviation, county_name desc 