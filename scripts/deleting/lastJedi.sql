DELETE FROM STUDENTS
WHERE first_name = 'Anakin'
RETURNING *;