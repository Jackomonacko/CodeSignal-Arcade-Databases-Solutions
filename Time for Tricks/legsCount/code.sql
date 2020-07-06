DROP PROCEDURE IF EXISTS legsCount;
CREATE PROCEDURE legsCount()
    SELECT sum(case when type = 'human'
                    then 2
                    when type = 'cat'
                    then 4
                    when type = 'dog'
                    then 4
                    else 0
              end) as summary_legs
    FROM creatures
    ORDER BY id;
