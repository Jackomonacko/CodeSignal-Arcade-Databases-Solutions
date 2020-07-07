/*Please add ; after each select statement*/
CREATE PROCEDURE sunnyHolidays()
BEGIN
SELECT holiday_date ski_date
FROM holidays, weather
WHERE holiday_date = sunny_date; 
END
