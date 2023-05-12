. Retrieve all the details of the students.

SELECT * FROM student;

2. Retrieve the names of all the courses.

SELECT c_title FROM course;

3. Retrieve the course_id and credit of the courses that have a credit value greater than 3.

SELECT course_id, credit FROM course WHERE credit > 3;

4. Retrieve the ae_id and maxmarks of all the assignments.

SELECT ae_id, maxmarks FROM assignment;

5. Retrieve the regNo and course_id of the enrolls table.

SELECT regNo, course_id FROM enrolls;

6. Retrieve the regNo and ae_id of the takes table.

SELECT regNo, ae_id FROM takes;

7. Retrieve the ae_id and course_id of the belongs table.

SELECT ae_id, course_id FROM belongs;

8. Retrieve the regNo and sem of the semester table.

SELECT regNo, sem FROM semester;

9. Retrieve the details of the student whose regNo is 123456789.

SELECT * FROM student WHERE regNo = 123456789;

10. Retrieve the course_id, c_title and credit of the course with course_id 'CS101'.

SELECT course_id, c_title, credit FROM course WHERE course_id = 'CS101';

11. Retrieve the course_id, c_title and maxmarks of all the assignments for the course with course_id 'CS101'.

SELECT a.course_id, c.c_title, a.maxmarks FROM assignment a JOIN course c ON a.course_id = c.course_id WHERE a.course_id = 'CS101';

12. Retrieve the regNo, stud_name, course_id and grade of all the students who took the course with course_id 'CS101'.

SELECT s.regNo, s.stud_name, e.course_id, e.grade FROM student s JOIN enrolls e ON s.regNo = e.regNo WHERE e.course_id = 'CS101';

13. Retrieve the regNo, stud_name and marks of all the students who took the assignment with ae_id 'CS101_1'.

SELECT s.regNo, s.stud_name, t.marks FROM student s JOIN takes t ON s.regNo = t.regNo WHERE t.ae_id = 'CS101_1';

14. Retrieve the course_id, c_title and maxmarks of all the assignments for the course with course_id 'CS101' and whose maxmarks is greater than 20.

SELECT a.course_id, c.c_title, a.maxmarks FROM assignment a JOIN course c ON a.course_id = c.course_id WHERE a.course_id = 'CS101' AND a.maxmarks > 20;

15. Retrieve the regNo, sem and gpa of all the students who have a gpa greater than 8.

SELECT regNo, sem, gpa FROM semester WHERE gpa > 8;
