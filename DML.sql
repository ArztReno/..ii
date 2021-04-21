# Authors: Renato Gusani & Jordan O Donovan 
# Student No. : x19411076 & x19372016
# Date : 11/12/2020
# Database: Finance + Agriculture DML

USE payroll;

INSERT INTO address VALUES ("A001", "3 Greenhill Rd", "Limerick", NULL, "Limerick", "V94 AY87"),
	("A002", "5 O'Connell Street", "Dublin", NULL, "Dublin", "D01 DR02"),
	("A003", "8 Presentation Rd", "Galway", NULL, "Galway", "H91 XP65"),
	("A004", "5 Cathedral Rd", "Cork", NULL, "Cork", "T23 EN42"),
	("A005", "34 Upper Newcastle", "Galway", NULL, "Galway", "H91 NC47"),
	("A006", "17 Pope's Hill", "Cork", NULL, "Cork", "T23 EK51"),
	("A007", "9 Hazelbrook Rd", "Dublin", NULL, "Dublin", "D6W PU29"),
	("A008", "30 Blackabbey Rd", "Adare", NULL, "Limerick", "V94 VE41");

INSERT INTO employee VALUES (1, "Harry", "McCarthy", "A001", "F001", "T001", "Farm labourer", 0864862394, "harrymc@gmail.com", "1993-06-15"),
	(2, "Jeff", "O'Donnell", "A002", "B001", "T002", "Clerk", 0871589437, "obbob@yahoo.com", "1997-02-19"),
	(3, "Darren", "Hurley", "A003", "F002", "T003", "Farm labourer", 0836421379, "dharte@yahoo.com", "2000-07-29"),
	(4, "Ryan", "Harte", "A004", "B002", "T004", "IT management", 0879517534, "ryry@gmail.com", "1985-12-02"),
	(5, "Mary", "Lynch", "A005", "F002", "T005", "Mechanic", 0869631478, "lynchmary@yahoo.com", "1992-01-30"),
	(6, "Laura", "O'Dwyer", "A006", "B002", "T006", "Clerk", 0878426759, "laura78@yahoo.com", "1978-11-14"),
	(7, "Patrick", "Sullivan", "A007", "B001", "T007", "Marketing", 0871534269, "moneyman@yahoo.com", "1988-03-27"),
	(8, "Niamh", "Daly", "A008", "F001", "T008", "Crop overseer", 0869437621, "dalylama@yahoo.com", "2001-06-09");

INSERT INTO farm VALUES ("F001", "Limerick Farm", 06126489),
	("F002", "Galway Farm", 09135742);

INSERT INTO branch VALUES ("B001", "Dublin Branch", 0146279),
	("B002", "Cork Branch", 02174962);
    
INSERT INTO tax VALUES("T001", "2694.36", "2763.14", "7060.00", "3648.74"),
	("T002", "1034.63", "1167.15", "5943.32", NULL),
	("T003", "3494.71", "3762.13", "7060.00", "5431.94"),
	("T004", "1348.64", "1548.67", "6741.33", NULL),
	("T005", "1296.41", "1421.74", "6134.28", NULL),
	("T006", "831.15", "914.31", "4269.15", NULL),
	("T007", "1027.52", "1089.24", "5763.47", NULL),
	("T008", "2210.34", "2491.31", "7060.00", "237.47");

INSERT INTO pay VALUES(1, "43000", NULL, "2019-12-12", "1641.75", "600", "T001"),
    (2, NULL, "14", "2020-03-31", "861.50", "250", "T002"),
    (3, "46400", NULL, "2019-09-30", "1243.75", "500", "T003"),
    (4, "31640", NULL, NULL, "764.43", "400", "T004"),
    (5, NULL, "15", "2019-12-12", "150", "250", "T005"),
    (6, NULL, "12.50", NULL, "417.25", "350", "T006"),
    (7, NULL, "13.70", NULL, "534.40", "250", "T007"),
    (8, "35000", NULL, NULL, "237.80", "250", "T008");

INSERT INTO absence VALUES(1, 6, 14, NULL, 6),
    (2, 12, 8, NULL, 12),
    (3, 20, NULL, 2, 22),
    (4, 17, 3, NULL, 17),
    (5, 20, NULL, 40, 60),
    (6, 11, 9, NULL, 11),
    (7, 7, 13, NULL, 7),
    (8, 2, 18, NULL, 2);
    
INSERT INTO time VALUES(1, 1964.33, "2020-01-01", "2020-12-12"),
    (2, 1984.66, "2020-01-01", "2020-12-12"),
    (3, 1922, "2020-01-01", "2020-12-12"),
    (4, 1952.33, "2020-01-01", "2020-12-12"),
    (5, 1275, "2020-01-01", "2020-12-12"),
    (6, 843.33, "2020-05-01", "2020-12-12"),
    (7, 1684.66, "2020-06-20", "2020-12-12"),
    (8, 723.5, "2020-08-15", "2020-12-12");
    
INSERT INTO agriculture VALUES(1, "F001"),
	(8, "F001"),
    (3, "F002"),
    (5, "F002");

INSERT INTO finance VALUES(2, "B001"),
	(7, "B001"),
    (4, "B002"),
    (6, "B002");