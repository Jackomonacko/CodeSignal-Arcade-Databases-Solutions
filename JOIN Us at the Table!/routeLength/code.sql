/*Please add ; after each select statement*/
CREATE PROCEDURE routeLength()
BEGIN
	SELECT ROUND(SUM(SQRT(POW(b.x - a.x,2) + POW(b.y - a.y,2))), 9) AS total
    FROM cities a
    LEFT JOIN cities b ON a.id + 1 = b.id
    WHERE b.id > 1;
END
