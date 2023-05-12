Retrieve the student details, course details, assignment details, and marks for all the assignments taken by the student with regNo 123456789 in semester 2.

SELECT s.regNo, s.stud_name, s.email, s.phone, c.course_id, c.c_title, a.ae_id, a.maxmarks, t.marks
FROM student s
JOIN enrolls e ON s.regNo = e.regNo
JOIN course c ON e.course_id = c.course_id
JOIN belongs b ON c.course_id = b.course_id
JOIN assignment a ON b.ae_id = a.ae_id
LEFT JOIN takes t ON s.regNo = t.regNo AND a.ae_id = t.ae_id
WHERE s.regNo = 123456789 AND e.sem = 2;


Retrieve the regNo, course_id, sem, and grade of the students who have not received a grade for any of the courses in semester 1.

SELECT e.regNo, e.course_id, e.sem, e.grade
FROM enrolls e
LEFT JOIN takes t ON e.regNo = t.regNo AND e.course_id = (SELECT course_id FROM belongs WHERE ae_id = t.ae_id)
WHERE e.sem = 1 AND t.marks IS NULL;


Retrieve the course_id and c_title of the courses that have not been assigned any assignments.

SELECT c.course_id, c.c_title
FROM course c
LEFT JOIN belongs b ON c.course_id = b.course_id
WHERE b.ae_id IS NULL;


Retrieve the regNo and stud_name of the students who have not enrolled in any courses.

SELECT s.regNo, s.stud_name
FROM student s
LEFT JOIN enrolls e ON s.regNo = e.regNo
WHERE e.course_id IS NULL;


Retrieve the course_id and c_title of the courses for which the average marks of the assignments is greater than 60.


SELECT c.course_id, c.c_title
FROM course c
JOIN belongs b ON c.course_id = b.course_id
JOIN assignment a ON b.ae_id = a.ae_id
JOIN takes t ON a.ae_id = t.ae_id
GROUP BY c.course_id, c.c_title
HAVING AVG(t.marks) > 60;
