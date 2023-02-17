USE Parts;

SELECT
pname AND P_id
FROM part;

SELECT DISTINCT
p.pname
FROM part p;

/* The code returns the unique column names and their id's*/
SELECT DISTINCT
p.pname, P_id
FROM part p;

SELECT
p.jname 
FROM project p
WHERE City = "London";

USE Parts;

SELECT *
FROM part;

SELECT
pname, weight
FROM part
WHERE Colour = "red";

USE Parts;

SELECT DISTINCT
sname
FROM supplier
WHERE city = "London";

SELECT *
FROM project;

/*Find the name and status of each supplier who supplies project J2*/
SELECT sname, status
FROM supplier
WHERE s_id IN (SELECT
  s_id
  FROM
  supply
  WHERE
  j_id = 'J2');
  
/*Find the name and city of each project supplied by a London-based supplier*/
SELECT jname, city
FROM project
WHERE j_id IN (SELECT
  j_id
  FROM
  supplier
  WHERE
  city = 'London');
  
/*Find the name and city of each project not supplied by a London-based supplier*/
SELECT jname, city
FROM project
WHERE j_id IN (SELECT
  j_id
  FROM
  supplier
  WHERE
  city NOT LIKE 'London%');
  
/*Find the supplier name, part name and project name for each case where a
supplier supplies a project with a part, but also the supplier city, project city
and part city are the same*/
SELECT sname, pname, jname
FROM supplier, part, project
WHERE supplier.city = project.city AND project.city = part.city;