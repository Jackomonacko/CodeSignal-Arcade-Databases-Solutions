/*Please add ; after each select statement*/
CREATE PROCEDURE dancingCompetition()
BEGIN
    create or replace view Z(a,b,c,d) as select * from scores;
    select a.*
        from scores a, Z
        group by 1
        having (first_criterion  in (min(b), max(b)))
             + (second_criterion in (min(c), max(c)))
             + (third_criterion  in (min(d), max(d))) < 2;
	
END
