CREATE PROCEDURE interestClub()
    SELECT name
    FROM people_interests
    WHERE interests && interests LIKE '%reading%' AND interests && interests LIKE '%drawing%'
    ORDER BY name
