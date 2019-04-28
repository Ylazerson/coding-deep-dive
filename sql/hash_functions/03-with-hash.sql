-- B''H --



select   id,
         first_name,
         last_name,
         dept_id
from     `data-science-course-226116.sql_lessons.employees_with_dupes`


/*
FINDING DUPLICATES METHOD 3:

Pros:
- No deed to redo for entire dataset everytime a new record comes in
- Can easily/cleanly/quickly view rows that are duplicates and non-duplicates
- Generates a nice reference ID for later usage

Cons:
- Slightly more complicated
- Be careful with coalesce part
*/


select   id,
         first_name,
         last_name,
         dept_id,
         -- --------------------------------------------
         to_hex(
             sha512(
                 -- ------------------------------------
                 concat(
                     -- --------------------------------
                     coalesce(
                         cast(id as string),
                         'ID-FIELD'
                     ),
                     -- --------------------------------
                     coalesce(
                         first_name,
                         'FIRST_NAME-FIELD'
                     ),
                     -- --------------------------------
                     coalesce(
                         last_name,
                         'LAST_NAME-FIELD'
                     ),
                     -- --------------------------------
                     coalesce(
                         cast(dept_id as string),
                         'DEPT_ID-FIELD'
                     )
                     -- --------------------------------                     
                 )
                 -- ------------------------------------
             )
         ) hash_sha512
         -- --------------------------------------------
from     `data-science-course-226116.sql_lessons.employees_with_dupes`
         -- --------------------------------------------
order by id,
         first_name,
         last_name,
         dept_id
         -- --------------------------------------------


