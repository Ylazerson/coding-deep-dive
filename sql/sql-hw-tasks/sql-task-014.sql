-- B''H --



select   s.state_abbreviation,
         s.state_name,
         count(c.state_abbreviation) number_of_counties
from     `data-science-course-226116.sql_lessons.join_test_states` s
         -- -----------------------------------------------------
   left outer join `data-science-course-226116.sql_lessons.join_test_counties` c
      on s.state_abbreviation = c.state_abbreviation 
         -- -----------------------------------------------------
group by s.state_abbreviation,
         s.state_name
         -- -----------------------------------------------------
having   count(c.state_abbreviation) > 140
    or   count(c.state_abbreviation) < 2
         -- -----------------------------------------------------
order by number_of_counties desc, s.state_abbreviation 
