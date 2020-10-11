SELECT
	DISTINCT projects.name
FROM
	students_to_projects
INNER JOIN projects
    ON students_to_projects.project_id = projects.id
INNER JOIN checkins
    ON students_to_projects.student_id = checkins.student_id
WHERE EXTRACT(month FROM "checked_in_at") = 06
AND EXTRACT(year FROM "checked_in_at") = 2016;
