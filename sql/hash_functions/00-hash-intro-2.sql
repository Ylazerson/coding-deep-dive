-- B''H --

select   sha512(
             concat('Mendy', 'Baruch')
         ) 
--
union all
--
select   sha512(
             concat('Mendy', null)
         ) 