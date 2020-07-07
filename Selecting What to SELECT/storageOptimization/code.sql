/*Please add ; after each select statement*/
CREATE PROCEDURE storageOptimization()
BEGIN

	select * from
    (select id,"name" as column_name,name as value from workers_info where not isnull(name)
    union
    select id,"date_of_birth" as column_name,date_of_birth as value from workers_info where not isnull(date_of_birth)
    union
    select id,"salary" as column_name,salary as value from workers_info where not isnull(salary)) as T
    order by id,field(column_name,"name","date_of_birth","salary");

END
