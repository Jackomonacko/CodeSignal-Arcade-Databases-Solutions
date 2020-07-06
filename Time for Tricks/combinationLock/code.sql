/*Please add ; after each select statement*/
CREATE PROCEDURE combinationLock()
BEGIN
  SELECT FLOOR(ROUND(EXP(SUM(LOG( LENGTH(characters) ))),1)) AS combinations
    FROM discs;
END
