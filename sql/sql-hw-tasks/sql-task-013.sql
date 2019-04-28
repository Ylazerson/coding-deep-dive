-- B''H --



select   c.*
from     `data-science-course-226116.sql_lessons.join_test_counties` c
         -- -----------------------------------------------------
   left outer join `data-science-course-226116.sql_lessons.join_test_states` s
      on s.state_abbreviation = c.state_abbreviation 
         -- -----------------------------------------------------
where    s.state_abbreviation is null         
  and    lower(c.county_name) like '%ada%'