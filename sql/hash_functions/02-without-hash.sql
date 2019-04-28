-- B''H --



select   id,
         first_name,
         last_name,
         dept_id
from     `data-science-course-226116.sql_lessons.employees_with_dupes`


/*
FINDING DUPLICATES METHOD 2:

Pros:
- Works for simple tasks

Cons:
- Need to redo for entire dataset everytime a new record comes in
*/


select   id,
         first_name,
         last_name,
         dept_id,
         -- --------------------------------------------
         row_number() over (
             partition by id,
                          first_name,
                          last_name,
                          dept_id
         ) partition_seq_no
         -- --------------------------------------------
from     `data-science-course-226116.sql_lessons.employees_with_dupes`
         -- --------------------------------------------
order by id,
         first_name,
         last_name,
         dept_id
         -- --------------------------------------------


