CREATE TABLE Karmand (
  emp_no int,
  Hoqoq int,
  birth_date date,
  first_name varchar(100),
  last_name varchar(100),
  gender varchar(100),
  hire_date date,
  PRIMARY KEY (emp_no)
);

CREATE TABLE Vahed_Edari (
  dept_no varchar(100),
  dept_name varchar(100
  city_name varchar(100),
  PRIMARY KEY (dept_no)
);

CREATE TABLE Shobe (
  emp_no int,
  vahed int,
  dept_no varchar(100) ,
  city_name varchar(100) ,
  from_date date,
  to_date date,
  Foreign KEY (emp_no) references Karmand (emp_no),
  Foreign KEY (dept_no) references Vahed_Edari (dept_no),
  PRIMARY KEY (emp_no,dept_no)
);



CREATE TABLE Modeir_Shobe (
  dept_no varchar(100),
  emp_no int,
  from_date date,
  to_date date,
  Foreign KEY (emp_no) references Karmand (emp_no),
  Foreign KEY (dept_no) references Vahed_Edari (dept_no),
  PRIMARY KEY (emp_no,dept_no)
);



CREATE TABLE Hoqoq (
  emp_no int,
  salary int,
  from_date date,
  to_date date,
  Foreign KEY (emp_no) references Karmand (emp_no),
  PRIMARY KEY (emp_no,from_date)
);



CREATE TABLE Semat (
  emp_no int,
  title varchar(100),
  from_date date,
  to_date date,
  Foreign KEY (emp_no) references Karmand (emp_no),
  PRIMARY KEY (emp_no, title, from_date)
);

--Querys

--1-1
SELECT Name
FROM Karmand
WHERE Hoqoq < 1000
ORDER BY Hoqoq;
--1-2
SELECT Name
FROM Karmand
SELECT Name
FROM Vahed_Edari
ORDER BY Name;
--1-3
SELECT
    AVG(Hoqoq)
FROM
    Karmand;
--1-4
SELECT Name
FROM Vahed_Edari
WHERE city_name = 'esfahan'
--1-5
SELECT Name
FROM Shobe
SELECT
    COUNT(vahed)

--1-6
SELECT Name
FROM Karmand
AND
    SELECT Name
    FROM Shobe

--1-7
SELECT
    AVG(Hoqoq)
FROM
    Karmand;
        WHERE city_name = 'esfahan'

--1-8

SELECT Name
FROM Shobe
SELECT
    COUNT(Karmand)

--1-9
SELECT Name
FROM Shobe
    WHERE city_name = 'esfahan'
    AND
    SELECT
        COUNT(Karmand)

--1-10
SELECT Name
FROM Shobe
WHERE COUNT(Karmand) < 10
