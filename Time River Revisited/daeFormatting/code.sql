/*Please add ; after each select statement*/
CREATE PROCEDURE dateFormatting()
BEGIN
	SELECT DATE(date_str) AS date_iso
    FROM documents
    ORDER BY id;
END
