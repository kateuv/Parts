USE Parts;

SELECT
pname AND P_id
FROM part;

SELECT DISTINCT
p.pname
FROM part p;

/* The code returns the unique column names and their id's because that is what I asked it to do*/
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