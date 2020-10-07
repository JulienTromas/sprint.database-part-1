Select first_name, last_name from students
INNER JOIN students_to_projects
ON students.id = students_to_projects.student_id
WHERE students_to_projects.project_id = 5;