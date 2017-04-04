CREATE TABLE teacher(
	id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE student(
	id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE teacher_student (
	teacher_id INT(10) NOT NULL, 
	student_id INT(10) NOT NULL
);

INSERT INTO teacher (name) VALUES ( 'Perry Solis' ), ( 'Lizzie Allison' ), ( 'Rosario Bass' ), ( 'Alexandra Gilmore' ), ( 'Toni Velasquez' ), ( 'Dianna Ingram' ), ( 'Norman Graham' ), ( 'Staci Hurley' ), ( 'Nielsen Wright' ), ( 'Margret Bauer' ), ( 'Oneal Herrera' ), ( 'Stacie Garrison' ), ( 'Garrett Shepard' ), ( 'Miller Ball' ), ( 'Clayton Conway' ), ( 'Combs Good' ), ( 'Day Torres' ), ( 'Hubbard Sweeney' ), ( 'Ferrell Gibson' ), ( 'Powers Stevens' ), ( 'Simmons Atkins' ), ( 'Prince Pena' ), ( 'Lott Puckett' ), ( 'Tiffany Alston' ), ( 'Shields Clements' ), ( 'Nancy Thornton' ), ( 'Silvia Barry' ), ( 'Angelique Foley' ), ( 'Victoria Duke' ), ( 'Kari Daniel' ), ( 'Bennett Holcomb' ), ( 'Herman Cantrell' ), ( 'Pam Sampson' ), ( 'Lindsey Obrien' ), ( 'June Webster' ), ( 'Kirby Craft' ), ( 'Amie Mathis' ), ( 'Sandy Pollard' ), ( 'Alvarado Levy' ), ( 'Hahn Oneal' ), ( 'Tessa Daniels' ), ( 'Yates Davis' ), ( 'Gould Valenzuela' ), ( 'Freida Everett' ), ( 'Hayes Massey' ), ( 'Castillo Ortega' ), ( 'Vinson Campos' ), ( 'Gilmore Travis' ), ( 'Madeline Rose' ), ( 'Haley Hoover' ), ( 'Porter Petty' ), ( 'Marcella Mcfarland' ), ( 'Hatfield Davidson' ), ( 'Delores Beasley' ), ( 'Manuela Mercado' ), ( 'Barnett Singleton' ), ( 'Black Patterson' ), ( 'Cook Mcdonald' ), ( 'Adriana Sanford' ), ( 'Williams Bolton' ), ( 'Lesa Dixon' ), ( 'Lidia Salinas' ), ( 'Page Crosby' ), ( 'Traci Lowe' ), ( 'Hillary Valdez' ), ( 'Dolores Terrell' ), ( 'Shepherd Huffman' ), ( 'Sadie Merritt' ), ( 'Harrington Bridges' ), ( 'Mcdowell Cantu' ), ( 'Richardson Spears' ), ( 'Marisa Wyatt' ), ( 'Roberson Cox' ), ( 'Schneider West' ), ( 'Janna Porter' ), ( 'Nina Moon' ), ( 'Molly Mcgee' ), ( 'Hobbs Becker' ), ( 'Rosemary Lawson' ), ( 'Luna Gould' ), ( 'Conley Hines' ), ( 'Moss Kennedy' ), ( 'Lupe Fischer' ), ( 'Hoover Patrick' ), ( 'Harrison Osborn' ), ( 'Ollie Russell' ), ( 'Charmaine Crawford' ), ( 'Latoya Randall' ), ( 'Pearson Levine' ), ( 'Cooke Nelson' ), ( 'Daisy Johnston' ), ( 'Sims Mcmahon' ), ( 'Alvarez Powers' ), ( 'Macdonald Marquez' ), ( 'Conrad Mcleod' ), ( 'Gertrude Bentley' ), ( 'Corina Santos' ), ( 'Bentley Meyer' ), ( 'Booth Carver' ), ( 'Eva Hoffman' );

INSERT INTO student (name) VALUES ( 'Cantrell Guerrero' ), ( 'Knight Dale' ), ( 'Skinner Farrell' ), ( 'Brianna Sparks' ), ( 'Imogene Barry' ), ( 'Lorene Pitts' ), ( 'Fran Alexander' ), ( 'Duran Holder' ), ( 'Nguyen Joyce' ), ( 'Lambert Little' ), ( 'Moody Chang' ), ( 'Harmon Rosario' ), ( 'Martha Sharp' ), ( 'Dickerson Mckee' ), ( 'Judy Fuller' ), ( 'Wilson Chandler' ), ( 'Fuller Kaufman' ), ( 'Laurie Ellison' ), ( 'Burt Buchanan' ), ( 'Marquita Myers' ), ( 'Darla Short' ), ( 'Roy Nielsen' ), ( 'Robbins Booth' ), ( 'Maude Barber' ), ( 'Branch Joyner' ), ( 'Cabrera Burt' ), ( 'Savage Salinas' ), ( 'Shauna Head' ), ( 'Elva Mccarthy' ), ( 'Howell Compton' ), ( 'Mueller Nunez' ), ( 'Deann Weeks' ), ( 'Evans Frazier' ), ( 'Carlson Gould' ), ( 'Donna Boyd' ), ( 'Curry Combs' ), ( 'Shelly Hudson' ), ( 'Nadine Dunn' ), ( 'Alta Watts' ), ( 'Monique Mendoza' ), ( 'Blevins Ortiz' ), ( 'Camacho Vaughan' ), ( 'Fanny Forbes' ), ( 'Bettie Wade' ), ( 'Lilly York' ), ( 'Dona Barrera' ), ( 'Gray Dean' ), ( 'Cecilia Spence' ), ( 'Eunice Mccoy' ), ( 'Shaw Carpenter' );

INSERT INTO teacher_student (teacher_id, student_id) VALUES (55, 39), (46, 9), (42, 47), (12, 32), (81, 21), (29, 11), (97, 49), (61, 43), (99, 18), (57, 42), (42, 4), (36, 48), (98, 22), (92, 45), (84, 20), (15, 42), (90, 46), (86, 16), (61, 23), (16, 15), (75, 27), (55, 46), (55, 16), (70, 15), (77, 48), (100, 3), (93, 8), (32, 15), (74, 18), (47, 11), (52, 13), (21, 22), (10, 19), (1, 28), (73, 5), (51, 31), (85, 20), (5, 38), (31, 16), (66, 29), (39, 38), (51, 6), (90, 48), (34, 5), (90, 14), (70, 40), (82, 37), (67, 17), (26, 45), (81, 11), (94, 43), (7, 32), (52, 22), (37, 38), (35, 36), (28, 30), (45, 48), (9, 13), (95, 22), (77, 27), (1, 25), (53, 41), (80, 18), (53, 25), (37, 25), (32, 50), (55, 48), (55, 3), (31, 28), (73, 50), (15, 29), (91, 41), (14, 38), (85, 9), (28, 7), (10, 13), (1, 46), (94, 28), (82, 46), (3, 35), (42, 7), (20, 27), (13, 49), (11, 40), (76, 9), (39, 3), (2, 20), (87, 4), (43, 30), (36, 40), (17, 21), (15, 12), (85, 11), (65, 43), (6, 5), (20, 23), (34, 36), (20, 16), (93, 19), (90, 38), (20, 39), (12, 44), (12, 37), (32, 34), (57, 47), (25, 27), (1, 2), (1, 2), (56, 35), (45, 11), (61, 32), (27, 44), (33, 31), (30, 10), (63, 5), (33, 36), (86, 16), (98, 25), (3, 38), (100, 32), (99, 42), (89, 6), (6, 11), (71, 47), (85, 41), (52, 31), (71, 17), (81, 14), (30, 28), (8, 26), (67, 33), (41, 9), (99, 35), (43, 47), (14, 42), (65, 43), (4, 38), (74, 5), (41, 4), (16, 20), (19, 29), (83, 45), (48, 1), (27, 41), (91, 46), (86, 28), (23, 10), (32, 34), (33, 31), (41, 1), (9, 16), (83, 14), (74, 10), (43, 18), (68, 2), (41, 39), (68, 19), (35, 20), (71, 32), (65, 35), (99, 37), (38, 10), (6, 10), (24, 42), (8, 7), (55, 18), (49, 2), (84, 50), (6, 9), (5, 6), (72, 15), (86, 15), (62, 12), (2, 32), (93, 39), (84, 48), (21, 25), (89, 42), (71, 5), (54, 38), (49, 17), (17, 28), (66, 13), (92, 22), (59, 2), (27, 27), (47, 7), (27, 24), (22, 47), (20, 47), (24, 39), (17, 39), (70, 42), (16, 3), (75, 43), (92, 14), (88, 43), (33, 18), (84, 4), (47, 21), (42, 46), (24, 34), (37, 13), (79, 23), (91, 36), (62, 32), (47, 11), (66, 34), (10, 6), (96, 6), (16, 18), (68, 24), (33, 27), (37, 38), (68, 18), (5, 32), (49, 45), (28, 5), (78, 27), (88, 3), (50, 12), (27, 11), (64, 26), (8, 46), (61, 20), (8, 41), (27, 39), (78, 21), (80, 12), (14, 48), (96, 29), (23, 31), (25, 22), (33, 35), (54, 40), (61, 29), (35, 17), (69, 39), (90, 25), (33, 25), (54, 19), (74, 27), (92, 8), (59, 29), (69, 33), (82, 5), (44, 23), (42, 46), (14, 14), (74, 36), (17, 37), (33, 4), (59, 16), (96, 1), (90, 44), (12, 38), (90, 27), (48, 46), (67, 48), (68, 7), (93, 32), (93, 26), (6, 21), (88, 23), (81, 16), (36, 6), (22, 45), (25, 36), (14, 34), (11, 6), (48, 26), (84, 19), (25, 16), (5, 33), (70, 24), (98, 26), (40, 42), (58, 29), (86, 35), (54, 46), (97, 6), (54, 29), (57, 7), (22, 14), (92, 12), (56, 16), (48, 16), (37, 35), (48, 43), (89, 48), (71, 9), (72, 34), (29, 40), (67, 28), (85, 46), (18, 32), (75, 33), (90, 46), (62, 38), (16, 13), (56, 48), (21, 3), (38, 12), (62, 7), (68, 50), (96, 19), (20, 47), (6, 10), (31, 33), (58, 11), (40, 23), (64, 21), (41, 13), (72, 28), (1, 3), (17, 28), (2, 21), (84, 4), (64, 47), (20, 48), (93, 25), (5, 36), (72, 35), (22, 50), (17, 34), (77, 42), (13, 9), (10, 9), (94, 5), (99, 26), (12, 43), (82, 48), (6, 29), (51, 42), (41, 44), (8, 17), (57, 39), (98, 31), (20, 13), (80, 23), (37, 45), (15, 12), (91, 24), (1, 29), (25, 49), (70, 10), (81, 33), (42, 26), (51, 48), (68, 25), (65, 9), (27, 33), (85, 49), (87, 49), (45, 32), (25, 7), (20, 44), (62, 2), (78, 26), (70, 10), (64, 8), (69, 37), (15, 26), (97, 16), (54, 25), (75, 3), (12, 29), (96, 42), (83, 4), (50, 35), (39, 23), (66, 48), (10, 36), (8, 38), (58, 26), (61, 15), (11, 40), (77, 9), (31, 33), (18, 47), (96, 34), (89, 20), (15, 2), (80, 8), (81, 32), (45, 32), (67, 12), (14, 43), (96, 29), (94, 34), (90, 39), (18, 23), (27, 7), (75, 13), (44, 29), (65, 14), (8, 12), (60, 47), (69, 13), (87, 5), (44, 38), (6, 28), (79, 10), (90, 50), (80, 44), (3, 38), (22, 45), (39, 39), (44, 45), (99, 43), (7, 20), (23, 6), (69, 4), (47, 26), (81, 37), (99, 33), (4, 45), (13, 30), (7, 19), (20, 47), (19, 6), (62, 8), (96, 21);