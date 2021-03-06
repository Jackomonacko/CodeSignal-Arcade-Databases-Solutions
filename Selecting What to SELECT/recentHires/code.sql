/*Please add ; after each select statement*/
CREATE PROCEDURE recentHires()
BEGIN
	SELECT name names 
    FROM ((SELECT name, 1 dep FROM pr_department ORDER BY date_joined DESC LIMIT 5)
          UNION ALL
          (SELECT name, 2 dep FROM it_department ORDER BY date_joined DESC LIMIT 5)
          UNION ALL
          (SELECT name, 3 dep FROM sales_department ORDER BY date_joined DESC LIMIT 5)
         ) p
         order by dep, name;
END
