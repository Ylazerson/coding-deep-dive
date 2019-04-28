-- B''H --



select   id,
         first_name,
         last_name,
         dept_id
from     `data-science-course-226116.sql_lessons.employees_with_dupes`


/*
FINDING DUPLICATES METHOD 1:

Pros:
- Works for simple tasks

Cons:
- No easy/clean/fast way to view what rows are duplicates and non-duplicates
- Need to redo for entire dataset everytime a new record comes in
*/


select   id,
         first_name,
         last_name,
         dept_id,
         -- --------------------------------------------
         count(*)
from     `data-science-course-226116.sql_lessons.employees_with_dupes`
         -- --------------------------------------------
group by id,
         first_name,
         last_name,
         dept_id
         -- --------------------------------------------
having   count(*) > 1         

