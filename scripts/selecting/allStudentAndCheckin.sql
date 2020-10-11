SELECT students, checkins.checked_in_at
FROM students
INNER JOIN checkins
ON students.id = checkins.id;