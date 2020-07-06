/*Please add ; after each select statement*/
CREATE PROCEDURE netIncome()
BEGIN
	SELECT YEAR(date) as year, QUARTER(date) AS quarter, (SUM(profit)-SUM(loss)) AS net_profit
    FROM accounting
    GROUP BY year, quarter
    ORDER BY year, quarter;
END
