CREATE TABLE student (
  regNo DOUBLE NOT NULL,
  stud_name VARCHAR(20) NOT NULL,
  email VARCHAR(20) NOT NULL,
  pass VARCHAR(20) NOT NULL,
  phone INT NOT NULL,
  dob DATE NOT NULL,
  PRIMARY KEY (regNo),
  CONSTRAINT email_check CHECK (email LIKE '%_@_____%___%')
);


CREATE TABLE course (
  course_id varchar(8) primary key,
  c_title varchar(20) not null,
  credit numeric(1,0) check (credit > 0)
);
CREATE TABLE assignment (
  ae_id varchar(10) NOT NULL,
  maxmarks numeric(2,0) NOT NULL check (maxmarks<100),
  course_id varchar(8),
  PRIMARY KEY (ae_id),
  FOREIGN KEY (course_id) REFERENCES course(course_id) ON UPDATE CASCADE
);

CREATE TABLE enrolls (
  regNo VARCHAR(9) NOT NULL,
  course_id VARCHAR(8) NOT NULL,
  sem NUMERIC(1,0) NOT NULL,
  grade VARCHAR(2) CHECK (grade IN ('A+', 'A', 'B', 'C', 'D', 'E', 'F')),
  PRIMARY KEY (regNo, course_id, sem),
  FOREIGN KEY (regNo) REFERENCES student(regNo) ON DELETE CASCADE,
  FOREIGN KEY (course_id) REFERENCES course(course_id) ON DELETE CASCADE
);
		
