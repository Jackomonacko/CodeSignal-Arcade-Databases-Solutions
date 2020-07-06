/*Please add ; after each select statement*/
CREATE PROCEDURE nullIntern()
BEGIN
    select count(id) number_of_nulls
        from departments
        where description is null 
           or trim(description) in ('null', 'nil', '-');  
END
