/*Please add ; after each select statement*/
CREATE PROCEDURE checkExpenditure()
BEGIN
    select id, cast(sum(expenditure_sum) - value AS unsigned) loss
        from allowable_expenditure, expenditure_plan
        where week(monday_date) between left_bound and right_bound
        group by 1;
END
