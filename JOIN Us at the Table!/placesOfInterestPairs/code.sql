/*Please add ; after each select statement*/
CREATE PROCEDURE placesOfInterestPairs()
BEGIN
    SELECT
        a.`name` AS `place1`,
        b.`name` AS `place2`
    FROM
        sights AS a
    JOIN
        sights AS b ON (a.`name` < b.`name`)
    WHERE
        DISTANCE(POINT(a.`x`,a.`y`), POINT(b.`x`, b.`y`)) < 5
    ORDER BY
        `place1`,
        `place2`;
END
