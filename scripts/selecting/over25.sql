SELECT * FROM students WHERE ((date_part('year', age(date_of_birth))::int)>25);
where date_of_birth < dateadd(year, -25, getdate());


SELECT (date_part('year', age(date_of_birth))::int) FROM students;