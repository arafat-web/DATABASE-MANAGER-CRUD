DROP TABLE IF EXISTS `records`;

CREATE TABLE `records` (
  `SL` mediumint(8) unsigned NOT NULL auto_increment,
  `roll` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `deptt` TEXT default NULL,
  `dob` varchar(255),
  PRIMARY KEY (`SL`)
) AUTO_INCREMENT=1;

INSERT INTO `records` (`roll`,`name`,`deptt`,`dob`)
VALUES
  (212009,"Donna Hall","FDT","1997-10-09"),
  (291025,"Violet Collier","FDT","1992-09-23"),
  (205247,"Daphne Roberson","AIDT","1998-05-03"),
  (280494,"Cooper Wade","CSE","1992-03-18"),
  (265470,"Nomlanga Sharp","AIDT","1996-11-10"),
  (262735,"Germaine Stokes","CSE","1990-11-07"),
  (273701,"Karleigh Hester","CSE","1998-09-18"),
  (233530,"Renee Lindsey","AIDT","1996-08-16"),
  (244788,"Hunter Church","CSE","1996-09-10"),
  (298655,"Zenia Kline","CSE","1991-03-14");
INSERT INTO `records` (`roll`,`name`,`deptt`,`dob`)
VALUES
  (281066,"Hadassah Gould","FDT","1995-07-09"),
  (277659,"Hoyt Mullen","FDT","1990-11-24"),
  (247100,"Marah Rodriguez","CSE","1993-09-09"),
  (266853,"Karly Giles","FDT","1992-06-01"),
  (238234,"Cailin Stein","FDT","1993-05-04"),
  (224919,"Kyra Vazquez","AIDT","1999-07-13"),
  (214326,"Geraldine Walton","AIDT","1993-12-02"),
  (263035,"Reuben Workman","FDT","1993-02-17"),
  (215117,"Len Pope","FDT","1992-10-05"),
  (249759,"Mona Yang","FDT","1991-04-17");
INSERT INTO `records` (`roll`,`name`,`deptt`,`dob`)
VALUES
  (253644,"Quinn Norton","FDT","1992-09-21"),
  (264955,"Kasimir Foster","FDT","1994-04-11"),
  (263653,"Jessamine Henson","FDT","1999-10-19"),
  (205437,"Maxwell Dudley","FDT","1995-07-04"),
  (209500,"Veronica Cash","FDT","1995-10-28"),
  (204886,"Elijah Hart","AIDT","1995-11-20"),
  (233923,"Holly Roth","CSE","1990-05-16"),
  (288750,"Finn Deleon","CSE","1996-11-02"),
  (271272,"Lamar Bennett","AIDT","1990-12-01"),
  (235074,"Dahlia Rose","FDT","1991-09-27");
INSERT INTO `records` (`roll`,`name`,`deptt`,`dob`)
VALUES
  (268494,"Willow Vincent","AIDT","1992-08-15"),
  (260437,"Quintessa Cline","FDT","1995-09-05"),
  (265031,"Chanda Salinas","AIDT","1999-05-06"),
  (239621,"Ella Fry","FDT","1998-07-21"),
  (257325,"Candace Roberson","CSE","1990-11-03"),
  (235370,"Cherokee Higgins","FDT","1990-01-14"),
  (207725,"Gloria Douglas","FDT","1991-12-24"),
  (280466,"Lisandra Mayer","CSE","1990-08-08"),
  (208824,"Teegan Washington","FDT","1990-11-07"),
  (241602,"Desiree Washington","CSE","1996-03-29");
INSERT INTO `records` (`roll`,`name`,`deptt`,`dob`)
VALUES
  (287487,"Ifeoma Cannon","CSE","1999-10-12"),
  (266424,"Alisa Downs","FDT","1994-02-06"),
  (253897,"Aladdin Mcmillan","AIDT","1999-05-09"),
  (212666,"Nichole Kidd","FDT","1999-07-17"),
  (265460,"Callie Patton","CSE","1995-09-09"),
  (219845,"Brittany Burke","AIDT","1993-06-25"),
  (243990,"Carla Holland","AIDT","1996-05-04"),
  (275702,"Rebekah Ramirez","FDT","1990-08-30"),
  (238963,"Orli Bond","FDT","1999-06-19"),
  (286876,"Odette Trevino","FDT","1999-12-19");
INSERT INTO `records` (`roll`,`name`,`deptt`,`dob`)
VALUES
  (274772,"Rigel Ballard","FDT","1996-10-17"),
  (289397,"TaShya Parker","FDT","1998-05-16"),
  (282749,"Reuben England","FDT","1991-09-01"),
  (202795,"Ezra Shelton","FDT","1992-05-16"),
  (209889,"Brody Berger","FDT","1994-08-15"),
  (269195,"Gretchen Heath","FDT","1999-05-13"),
  (222740,"Duncan Duncan","CSE","1991-09-04"),
  (209550,"Coby Espinoza","CSE","1993-05-03"),
  (223975,"Carolyn Huber","CSE","1996-09-17"),
  (297264,"Phillip Silva","FDT","1995-10-30");
INSERT INTO `records` (`roll`,`name`,`deptt`,`dob`)
VALUES
  (224721,"Myles Mccarthy","AIDT","1999-12-10"),
  (232943,"Cecilia Velasquez","FDT","1998-09-24"),
  (215471,"Hedley Herring","FDT","1998-07-08"),
  (292311,"Cleo Gregory","FDT","1992-01-14"),
  (239751,"Brenden Bowman","AIDT","1999-10-08"),
  (268126,"Connor Blake","AIDT","1992-07-05"),
  (259281,"Thor Huber","CSE","1991-05-19"),
  (226138,"Serena Walls","AIDT","1998-01-13"),
  (208354,"Lunea Kennedy","CSE","1995-04-16"),
  (294423,"Donovan Lamb","AIDT","1996-10-10");
INSERT INTO `records` (`roll`,`name`,`deptt`,`dob`)
VALUES
  (268367,"Hyatt Estes","AIDT","1992-01-09"),
  (277752,"Melanie Potts","FDT","1997-02-13"),
  (243827,"Silas Trujillo","AIDT","1991-11-03"),
  (223227,"Chiquita Mccarty","FDT","1996-06-26"),
  (267517,"Kylan Livingston","FDT","1990-09-29"),
  (222126,"Cade Davenport","FDT","1998-08-25"),
  (220763,"Rhiannon Manning","FDT","1996-01-22"),
  (281393,"Simone Mercer","FDT","1990-10-05"),
  (203726,"Hanae Hebert","CSE","1992-07-11"),
  (289966,"Timothy Blevins","FDT","1993-09-11");
INSERT INTO `records` (`roll`,`name`,`deptt`,`dob`)
VALUES
  (268123,"Quin Carrillo","AIDT","1997-02-25"),
  (295624,"Walker Beard","AIDT","1994-12-05"),
  (287166,"Raya Emerson","CSE","1990-12-01"),
  (212504,"Eugenia Gamble","AIDT","1990-08-26"),
  (253838,"Tate Hobbs","CSE","1992-04-17"),
  (238253,"Lionel Clark","CSE","1999-04-24"),
  (235110,"Christine Frank","AIDT","1991-12-11"),
  (220114,"Magee Hobbs","CSE","1990-08-16"),
  (208679,"Colton Thompson","AIDT","1999-07-12"),
  (270789,"Katelyn Massey","CSE","1996-10-28");
INSERT INTO `records` (`roll`,`name`,`deptt`,`dob`)
VALUES
  (222233,"Demetrius Wall","FDT","1998-03-09"),
  (234125,"Oprah Hendrix","FDT","1999-10-19"),
  (294290,"Unity Benson","CSE","1999-06-14"),
  (252877,"Kimberley Baxter","CSE","1990-12-12"),
  (294937,"Aimee Rasmussen","FDT","1997-10-17"),
  (231271,"Wade Barlow","FDT","1997-01-29"),
  (209745,"Gabriel Norris","FDT","1997-10-11"),
  (237229,"Tyler Hardin","CSE","1990-03-13"),
  (203246,"Angela Francis","CSE","1992-10-02"),
  (258122,"Basia Hamilton","AIDT","1997-04-26");
