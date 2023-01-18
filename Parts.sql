CREATE DATABASE Parts;

USE Parts;

CREATE TABLE part (
    P_id VARCHAR(50),
    pname VARCHAR(50) NOT NULL,
    colour VARCHAR(50) NOT NULL,
    weight INT(2),
    city VARCHAR(50)
);

INSERT INTO part
VALUES
("P1", "Nut", "Red", 12, "London"),
("P2", "Bolt", "Blue",17, "Paris"),
("P3", "Screw", "Green", 17, "Rome"),
("P4", "Screw", "Red", 14, "London"),
("P5", "Cam", "Blue", 12, "Paris"),
("P6", "Cog", "Red", 19, "London");

CREATE TABLE project (
    J_id VARCHAR(50),
    jname VARCHAR(50) NOT NULL,
    city VARCHAR(50)
);

INSERT INTO project
VALUES
("J1", "Sorter", "Paris"),
("J2", "Display", "Rome"),
("J3", "Ocr", "Athens"),
("J4", "Console", "Athens"),
("J5", "Raid", "London"),
("J6", "Eds", "Oslo"),
("J7", "Tape", "London");

CREATE TABLE supplier (
    S_id VARCHAR(50),
    sname VARCHAR(50),
    status INT,
    city VARCHAR(50)
);

USE Parts;

INSERT INTO supplier
VALUES
("S1", "Smith", 20, "London"),
("S2", "Jones", 10, "Paris"),
("S3", "Blake", 30, "Paris"),
("S4", "Clark", 20, "London"),
("S5", "Adams", 30, "Athens");

CREATE TABLE supply (
    S_id VARCHAR(50),
    P_id VARCHAR(50),
    J_id VARCHAR(50),
    quantity INT
);

INSERT INTO supply
VALUES
("S1", "P1", "J1", 200),
("S1", "P1", "J4", 700),
("S2", "P3", "J1", 400),
("S2", "P3", "J2", 200),
("S2", "P3", "J3", 200),
("S2", "P3", "J4", 500),
("S2", "P3", "J5", 600),
("S2", "P3", "J6", 400),
("S2", "P3", "J7", 800),
("S2", "P5", "J2", 100),
("S3", "P3", "J1", 200),
("S3", "P4", "J2", 500),
("S4", "P6", "J3", 300),
("S4", "P6", "J7", 300),
("S4", "P2", "J2", 200),
("S5", "P2", "J4", 100),
("S5", "P5", "J5", 500),
("S5", "P5", "J7", 100),
("S5", "P6", "J2", 200),
("S5", "P1", "J4", 100),
("S5", "P3", "J4", 200),
("S5", "P4", "J4", 800),
("S5", "P5", "J4", 400),
("S5", "P6", "J4", 500);