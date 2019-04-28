-- B''H --



with incoming_data as
(
select 1 id, 'Mendy' first_name, 'cha' last_name, 99 dept_id union all
select 1 id, 'Mendy' first_name, 'cha' last_name, 99 dept_id union all
select 2 id, 'Yossi' first_name, 'David' last_name, 2 dept_id
),
-- -----------------------------------------------------
incoming_data_with_hash as
(
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
from     incoming_data          
         -- --------------------------------------------
)
-- -----------------------------------------------------
select   i.id             incoming_id,
         i.first_name     incoming_first_name,
         i.last_name      incoming_last_name,
         i.dept_id        incoming_dept_id,
         i.hash_sha512    incoming_hash_sha512,
         -- --------------------------------------------
         emp.id           emp_id,
         emp.first_name   emp_first_name,
         emp.last_name    emp_last_name,
         emp.dept_id      emp_dept_id,
         emp.hash_sha512  emp_hash_sha512
         -- --------------------------------------------
from     incoming_data_with_hash i
    left outer join `data-science-course-226116.sql_lessons.employees_with_sha512` emp
      on i.hash_sha512 = emp.hash_sha512
