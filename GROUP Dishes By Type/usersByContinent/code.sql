/*Please add ; after each select statement*/
CREATE PROCEDURE usersByContinent()
BEGIN
    SELECT continent, SUM(users)
    FROM countries
    GROUP BY continent 
    ORDER BY continent DESC;
END
