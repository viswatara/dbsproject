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
