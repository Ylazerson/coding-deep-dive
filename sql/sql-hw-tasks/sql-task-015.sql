-- b''h --




select   s.state_name,
         n.gender,
         n.name,
         sum(n.number) number_of_babies
         -- ----------------------------------
from     `bigquery-public-data.usa_names.usa_1910_current` n
         -- ----------------------------------
   inner join `data-science-course-226116.sql_lessons.states` s
      on s.state_abbreviation = n.state 
         -- ----------------------------------
group by s.state_name,
         n.gender,
         n.name
         -- ---------------------------------- 
having   sum(n.number) > 370000         
         -- ----------------------------------
order by number_of_babies desc          