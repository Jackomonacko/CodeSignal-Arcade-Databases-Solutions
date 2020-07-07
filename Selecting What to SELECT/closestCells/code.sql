CREATE PROCEDURE closestCells()
BEGIN
    select l.id id1,
           (select id 
                from positions r
                where l.id <> r.id
                order by power(l.x - r.x,2) + power(l.y - r.y,2) limit 1
           ) id2
        from positions l;
END
