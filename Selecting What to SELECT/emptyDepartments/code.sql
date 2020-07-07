/*Please add ; after each select statement*/
CREATE PROCEDURE emptyDepartments()
BEGIN
	SELECT dep_name FROM departments 
    WHERE NOT EXISTS(
         SELECT department FROM employees WHERE departments.id=employees.department
    )
    ORDER BY id;
END
