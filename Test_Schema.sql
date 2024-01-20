DROP DATABASE IF EXISTS Ifeoma01;
CREATE DATABASE IF NOT EXISTS Ifeoma01;

DROP TABLE IF EXISTS class;
CREATE TABLE class (
	class_code VARCHAR (11) PRIMARY KEY,
	crs_code VARCHAR(25),
    class_section VARCHAR(1),
    class_time VARCHAR(25),
	class_room VARCHAR(11),
	emp_num INT
);
DROP TABLE IF EXISTS course;
CREATE TABLE course (
	crs_code VARCHAR (11) PRIMARY KEY,
	dept_code VARCHAR (8),
	crs_description VARCHAR (35),
	crs_credit DECIMAL (8,2)
);
DROP TABLE IF EXISTS department;
CREATE TABLE department (
dept_code VARCHAR (11) PRIMARY KEY,	
dept_name VARCHAR(25),
school_code VARCHAR (11),
emp_num INT (11),
dept_address VARCHAR (11),
school_address VARCHAR (40),
dept_extension INT (10)

);
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
	emp_num INT PRIMARY KEY,
	emp_lname VARCHAR (25) ,
	emp_fname VARCHAR (15),
	emp_initial VARCHAR (5),
    emp_jobcode CHAR (5),
    emp_hiredate DATE,
	emp_dob DATE 
);
DROP TABLE IF EXISTS enroll;
CREATE TABLE enroll (
	class_code VARCHAR (11),
	stu_num INT (11),
	enroll_grade VARCHAR (11),
	enroll_credit INT (5)
);
DROP TABLE IF EXISTS professor;
CREATE TABLE professor (
	emp_num INT,
	dept_code VARCHAR (11) ,
    prof_office VARCHAR (11),
    prof_extension VARCHAR (5),
    prof_high_degree VARCHAR (11)
);
DROP TABLE IF EXISTS school;
CREATE TABLE school (
	school_code VARCHAR (11) PRIMARY KEY,
	emp_num INT (11),
	school_address VARCHAR (25),
	school_office VARCHAR (11),
	school_extension VARCHAR (8) 
);

DROP TABLE IF EXISTS student;
CREATE TABLE student (
	stu_num INT PRIMARY KEY,
	stu_lname VARCHAR (25),
	stu_fname VARCHAR (25),
	stu_initial VARCHAR (5),
	stu_dob DATE,
	stu_hrs INT (5),
	stu_class VARCHAR (3), 
	stu_gpa DECIMAL (8,3),
	stu_transfer CHAR (2) ,
	dept_code VARCHAR (11) ,
	stu_phone VARCHAR (11) ,
	emp_num INT 
);
DROP TABLE IF EXISTS building;
CREATE TABLE building (
	building_code VARCHAR (11),
	building_name VARCHAR (35),
	building_location VARCHAR (30)
);
DROP TABLE IF EXISTS room;
CREATE TABLE room (
	room_code VARCHAR (11),
	building_code VARCHAR (11),
	room_type VARCHAR (20) 
);
