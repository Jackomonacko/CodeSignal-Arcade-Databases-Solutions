/*Please add ; after each select statement*/
CREATE PROCEDURE salaryDifference()
BEGIN
  SELECT IFNULL(smax-smin,0) AS difference
  FROM (SELECT SUM(salary) AS smax FROM employees
       WHERE salary = (SELECT MAX(salary) FROM employees)) AS maxo,
       (SELECT SUM(salary) AS smin FROM employees
       WHERE salary = (SELECT min(salary) FROM employees)) AS mino;
END
