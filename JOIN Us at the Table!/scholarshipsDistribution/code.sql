/*Please add ; after each select statement*/
CREATE PROCEDURE scholarshipsDistribution()
BEGIN
    SELECT
        candidate_id AS student_id
    FROM
        candidates
    LEFT JOIN
        detentions ON (candidates.candidate_id = detentions.student_id)
    WHERE
        detentions.detention_date IS NULL;
END
