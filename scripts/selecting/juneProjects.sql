SELECT students, checkins.checked_in_at
FROM students
INNER JOIN checkins
ON students.id = checkins.id
WHERE EXTRACT(month FROM "checked_in_at") = 06
AND EXTRACT(year FROM "checked_in_at") = 2016;

Select name from projects
INNER JOIN students_to_projects AND checkins
ON students_to_projects.student_id= checkins.student_id
WHERE EXTRACT(month FROM "checked_in_at") = 06
AND EXTRACT(year FROM "checked_in_at") = 2016;

SELECT students, checkins.checked_in_at
FROM students 
   LEFT JOIN breed as breed1 ON animal.breedID=breed1.ID 
   RIGHT JOIN checkins as breed2 ON animal.breedID=breed2.ID 
WHERE animal.ID='7';


Select the `name` of all projects worked on by students who checked in in June 2016. There should be no duplicates in the list

CHECKINS : ISOLATE STUDENT_ID WHO CHECKED_IN_AT 2016-06
STUDENTS_TO_PROJECT : LINK STUDENT_ID TO PROJECT_ID
PROJECT : RETURN NAMES

Select name from projects
INNER JOIN students_to_projects
ON students.id = students_to_projects.student_id
WHERE students_to_projects.project_id = 5;
Select the `first_name` and `last_name` of all students who worked on the project with an `id` of 5.

SELECT students.id, checkins.checked_in_at
FROM students
INNER JOIN checkins
ON students.id = checkins.id
WHERE EXTRACT(month FROM "checked_in_at") = 06
AND EXTRACT(year FROM "checked_in_at") = 2016;


SELECT
	projects.name
FROM
	students_to_projects
INNER JOIN projects
    ON students_to_projects.project_id = projects.id
INNER JOIN checkins
    ON students_to_projects.student_id = checkins.student_id
WHERE EXTRACT(month FROM "checked_in_at") = 06
AND EXTRACT(year FROM "checked_in_at") = 2016;


    SELECT
	c.customer_id,
	c.first_name customer_first_name,
	c.last_name customer_last_name,
	s.first_name staff_first_name,
	s.last_name staff_last_name,
	amount,
	payment_date
FROM
	customer c
INNER JOIN payment p 
    ON p.customer_id = c.customer_id
INNER JOIN staff s 
    ON p.staff_id = s.staff_id


select name from projects
where projects.id (
  select 
  from a
  where status (
     select
  )
)



select name from projects
where projects.id (
  select project_id
  from students_to_projects
  where student_id(
     select student_id
     from checkins
     WHERE EXTRACT(month FROM "checkins.checked_in_at") = 06
AND EXTRACT(year FROM "checkins.checked_in_at") = 2016
  )
);