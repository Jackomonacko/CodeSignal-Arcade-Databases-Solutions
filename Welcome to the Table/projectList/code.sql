CREATE PROCEDURE projectList()
BEGIN
     SELECT project_name, team_lead, income
     FROM Projects
     ORDER by internal_id asc;
END
