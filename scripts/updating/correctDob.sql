UPDATE students
SET date_of_birth = date_of_birth + interval '100 year'
WHERE ((date_part('year', age(date_of_birth))::int)>100);

