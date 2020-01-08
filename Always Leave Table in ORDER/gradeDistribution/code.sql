/*Please add ; after each select statement*/
CREATE PROCEDURE gradeDistribution()
BEGIN
	SELECT Name, ID
    FROM Grades
    WHERE final > .5*Midterm1 + .5*Midterm2
    ORDER BY LEFT(name,3), id ASC;
END
