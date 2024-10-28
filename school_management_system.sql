-- 1. Izveido db
CREATE DATABASE school_management_system;
-- 2. Izveido tabulas
-- students un profiles
use school_management_system;
CREATE TABLE students(
	id int KEY NOT NULL AUTO_INCREMENT,
    first_name varchar(48) NOT NULL,
    last_name varchar(48) NOT NULL,
    email varchar(48)
);
CREATE TABLE profiles(
	id int KEY NOT NULL AUTO_INCREMENT,
    address varchar(210),
    phone varchar(20),
	student_id int,
    FOREIGN KEY (student_id) REFERENCES students(id)
);
-- Pievieno 5 studentus un profilus
INSERT INTO students (first_name, last_name, email) VALUES ("Edgars", "Girgensons", "123@mail.ru");
INSERT INTO profiles (address, phone, student_id) VALUES ("Pārventa", "12345678", LAST_INSERT_ID());

INSERT INTO students (first_name, last_name, email) VALUES ("Emīls", "Sūngailis", "123@mail.ru");
INSERT INTO profiles (address, phone, student_id) VALUES ("Pie Tobago", "12345678", LAST_INSERT_ID());

INSERT INTO students (first_name, last_name, email) VALUES ("Kristaps", "Tučs", "123@mail.ru");
INSERT INTO profiles (address, phone, student_id) VALUES ("Devenes", "12345678", LAST_INSERT_ID());

INSERT INTO students (first_name, last_name, email) VALUES ("Daniils", "Kučinskis", "123@mail.ru");
INSERT INTO profiles (address, phone, student_id) VALUES ("Gāliņciems", "12345678", LAST_INSERT_ID());

INSERT INTO students (first_name, last_name, email) VALUES ("Maksims", "Carevs", "123@mail.ru");
INSERT INTO profiles (address, phone, student_id) VALUES ("Tukums", "12345678", LAST_INSERT_ID());

-- Vaicājums
SELECT * FROM students JOIN profiles WHERE students.id = profiles.student_id;