/*Please add ; after each select statement*/
CREATE PROCEDURE trackingSystem()
BEGIN
	SELECT distinct anonymous_id as anonym_id,
    (SELECT event_name FROM tracks b WHERE b.anonymous_id = a.anonymous_id and b.user_id IS NULL ORDER BY received_at
    DESC LIMIT 1) AS 'last_null',
    (SELECT event_name FROM tracks b WHERE b.anonymous_id = a.anonymous_id AND b.user_id IS NOT NULL ORDER BY received_at    LIMIT 1) AS first_notnull
    FROM tracks a ORDER BY a.anonymous_id ASC;
END
