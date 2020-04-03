USE project_schema;


-- AVG given by professor ( DONE )
SELECT professors_name AS "Professor", AVG(grades_actual) AS "Average grade given"
FROM grades
RIGHT JOIN course
ON course_id_id = grades_course_id
RIGHT JOIN professors
ON professors_course_id = course_id_id
WHERE course_id_id > 0
GROUP BY professors_id;


-- Top Grades for each student ( DONE )
SELECT students_name AS "Student Name", MAX(grades_actual) AS "Top Grade"-- grabs top grade for each student but course name and course id is not accurate 
FROM course
RIGHT JOIN grades
ON grades_course_id = course_id_id
RIGHT JOIN students
ON students_name = grades_student_name
GROUP BY students_name;


-- Students enrolled in ( DONE )
SELECT grades_course_name AS "Course Name", grades_student_name "Student Name"
FROM grades
GROUP BY grades_student_name, grades_course_id
ORDER BY grades_course_id;


-- course avg grades, ASC ( DONE )
SELECT course_name AS "Course Name", AVG(grades_actual) AS "Course Average" -- brings back AVG of all grades separated into classes not just subjects in ASC order
FROM grades
RIGHT JOIN course
ON course_id_id = grades_course_id
WHERE course_id_id > 0
GROUP BY course_id_id
ORDER BY AVG(grades_actual) ASC;


-- professor course student ( DONE )
SELECT students_name AS "Student Name", professors_name AS "Professor", COUNT(DISTINCT professors_course_id) AS shared --  Professor and Student with most courses in common
FROM students 
RIGHT JOIN professors 
ON professors_course_id = students_course_id
GROUP BY students_name, professors_name
ORDER BY shared DESC
LIMIT 1;


-- First Create Courses
INSERT INTO course(course_name, course_id_id)
VALUES("Science 1", 1);

INSERT INTO course(course_name, course_id_id)
VALUES("Technology 2", 2);

INSERT INTO course(course_name, course_id_id)
VALUES("Engineering 3", 3);

INSERT INTO course(course_name, course_id_id)
VALUES("Math", 4);

INSERT INTO course(course_name, course_id_id)
VALUES("Chemistry", 5);


-- Second Assign Professors
INSERT INTO professors(professors_name, professors_course_id)
VALUES("Galileo Galilei", 1);

INSERT INTO professors(professors_name, professors_course_id)
VALUES("Galileo Galilei", 5);

INSERT INTO professors(professors_name, professors_course_id)
VALUES("Ada Lovelace", 2);

INSERT INTO professors(professors_name, professors_course_id)
VALUES("Sir Mokshagundam Visvesaraya", 3);

INSERT INTO professors(professors_name, professors_course_id)
VALUES("Sophie Germain", 4);

SELECT *
FROM professors;

-- Third Enroll students
INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("James Fields", 1);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("James Fields", 2);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("James Fields", 3);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("James Fields", 4);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("James Fields", 5);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Harry Hendrix", 1);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Harry Hendrix", 2);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Harry Hendrix", 3);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Harry Hendrix", 4);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Tony Alfred", 1);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Tony Alfred", 2);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Tony Alfred", 3);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Tony Alfred", 4);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Roxanne Annie", 1);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Roxanne Annie", 2);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Roxanne Annie", 3);

INSERT INTO 
	students(
		students_name, students_course_id
	)
VALUES("Roxanne Annie", 4);

SELECT *
FROM students;

-- Give them grades

-- James
INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Science 1", 1, "James Fields", 81, 90);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Science 1", 1, "James Fields", 81, 85);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Technology 2", 2, "James Fields", 81, 88);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Technology 2", 2, "James Fields", 81, 99);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Engineering 3", 3, "James Fields", 81, 40);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Engineering 3", 3, "James Fields", 81, 100);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Math 4", 4, "James Fields", 81, 60);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Math 4", 4, "James Fields", 81, 78);

-- Harry
INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Science 1", 1, "Harry Hendrix", 82, 80);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Science 1", 1, "Harry Hendrix", 82, 96);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Technology 2", 2, "Harry Hendrix", 82, 94);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Technology 2", 2, "Harry Hendrix", 82, 100);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Engineering 3", 3, "Harry Hendrix", 82, 70);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Engineering 3", 3, "Harry Hendrix", 82, 80);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Math 4", 4, "Harry Hendrix", 82, 95);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Math 4", 4, "Harry Hendrix", 82, 65);

-- Tony Alfred
INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Science 1", 1, "Tony Alfred", 83, 76);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Science 1", 1, "Tony Alfred", 83, 94);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Technology 2", 2, "Tony Alfred", 83, 45);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Technology 2", 2, "Tony Alfred", 83, 120);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Engineering 3", 3, "Tony Alfred", 83, 80);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Engineering 3", 3, "Tony Alfred", 83, 90);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Math 4", 4, "Tony Alfred", 83, 80);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Math 4", 4, "Tony Alfred", 83, 76);

-- Roxanne Annie
INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Science 1", 1, "Roxanne Annie", 84, 76);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Science 1", 1, "Roxanne Annie", 84, 65);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Technology 2", 2, "Roxanne Annie", 84, 90);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Technology 2", 2, "Roxanne Annie", 84, 100);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Engineering 3", 3, "Roxanne Annie", 84, 70);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Engineering 3", 3, "Roxanne Annie", 84, 96);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Math 4", 4, "Roxanne Annie", 84, 94);

INSERT INTO grades(grades_course_name, grades_course_id, grades_student_name, grades_student_id, grades_actual)
VALUES("Math 4", 4, "Roxanne Annie", 84, 78);
