/*Please add ; after each select statement*/
CREATE PROCEDURE consecutiveIds()
BEGIN
    
    SET @n = 0;
    SELECT id AS oldId, (@n:=@n+1) newId FROM itemIds
    ORDER BY id;
END
