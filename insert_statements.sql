/*Inserts for rugby_club*/
/*club_id*/
INSERT INTO rugby_club
(club_id)
VALUES
(220);

/*Inserts for coach*/
/*coach_id, fname, lname, coachingcert, club_id*/
INSERT ALL
INTO coach VALUES (100, 'Joe', 'Schmidt', 'Y', 220)
INTO coach VALUES (101, 'Declan', 'Kidney', 'Y', 220)
INTO coach VALUES (102, 'Eddie', 'Jones', 'Y', 220)
INTO coach VALUES (103, 'Warren', 'Gatland', 'Y', 220)
INTO coach VALUES (104, 'Steve', 'Hansen', 'Y', 220)
INTO coach VALUES (105, 'Pat', 'Lam', 'Y', 220)
INTO coach VALUES (106, 'Ian', 'McGeechan', 'Y', 220)
SELECT * FROM dual;

/*Inserts for team*/
/*team_id, teamname, coach_id*/
INSERT ALL
INTO team VALUES (300, 'Under 12', 106)
INTO team VALUES (301, 'Under 13', 105)
INTO team VALUES (302, 'Under 14', 104)
INTO team VALUES (303, 'Under 15', 103)
INTO team VALUES (304, 'Under 16', 102)
INTO team VALUES (305, 'Under 18', 101)
INTO team VALUES (306, 'Senior', 100)
SELECT * FROM dual;

/*Inserts for committee*/
/*committee_id*/
INSERT INTO committee
(committee_id)
VALUES
(1);

/*Inserts for member*/
/*member_id, fname, lname, dob, date_joined, address, ph_num, team_id, club_id, committee_id*/
INSERT ALL
INTO member VALUES (500, 'Ben', 'Lyons', '12/21/1991', '01/07/2001', '31 Moonvoy Valley, Tramore', '0834587482', 306, 220, NULL)
INTO member VALUES (501, 'Albert', 'Kelly', '11/01/2005', '01/03/2014', '16 Bridge Street, Waterford', '0861216443', 300, 220, NULL)
INTO member VALUES (502, 'Chris', 'Johnson', '10/10/2004', '02/06/2013', '19 Johns Hill, Waterford', '0876100288', 301, 220, NULL)
INTO member VALUES (503, 'Brian', 'Stewart', '09/15/2003', '03/09/2012', '2 Cannon Street, Waterford', '0863041447', 302, 220, NULL)
INTO member VALUES (504, 'Martin', 'Cooper', '08/25/2002', '04/18/2014', '40 New Street, Waterford', '0892354849', 303, 220, NULL)
INTO member VALUES (505, 'Thomas', 'Torres', '07/02/2001', '05/19/2012', '10 The Villas, Ballygunner', '0877217082', 304, 220, NULL)
INTO member VALUES (506, 'Joe', 'Mitchell', '06/22/1999', '06/27/2007', '12 Sesame Street, Kill', '0860697710', 305, 220, NULL)
INTO member VALUES (507, 'John', 'Turner', '05/30/1992', '07/14/2004', '19 Springfield, Fenor', '0877419455', 306, 220, NULL)
INTO member VALUES (508, 'Harry', 'Sanchez', '04/14/2005', '08/17/2012', '12 Queen Street, Tramore', '0860733143', 300, 220, NULL)
INTO member VALUES (509, 'Joshua', 'Nelson', '03/05/2004', '09/14/2016', '16 Marron Terreace, Ferrybank', '0852815272', 301, 220, NULL)
INTO member VALUES (510, 'Doug', 'Phillips', '02/26/2003', '10/03/2013', '23 The Square, Ballybeg', '0866463096', 302, 220, NULL)
INTO member VALUES (511, 'Calos', 'Griffin', '01/29/2002', '11/20/2014', '56 The Big Hill, Hilltown', '0876381881', 303, 220, NULL)
INTO member VALUES (512, 'Juan', 'Simmons', '12/17/2001', '12/29/2009', '1 Corner Lane, Dunmore', '0857137212', 304, 220, NULL)
INTO member VALUES (513, 'Gary', 'Ramirez', '11/13/2000', '01/22/2013', '62 Skibberen, Kilmeaden', '0866639465', 305, 220, NULL)
INTO member VALUES (514, 'Keith', 'Allen', '10/03/1989', '02/21/1999', '1141 Despard Stret, Waterford', '0877201616', 306, 220, NULL)
INTO member VALUES (515, 'Walter', 'Hall', '09/18/2005', '03/14/2015', 'Lost Creek Road, Ballygown', '0858282018', 300, 220, NULL)
INTO member VALUES (516, 'Scott', 'Alexander', '09/08/2004', '04/11/2014', '14 Willow Oaks Lane, Kill', '0873595156', 301, 220, NULL)
INTO member VALUES (517, 'Louis', 'Thomas', '08/19/2003', '05/27/2015', '37 Edegwoord Road, Tramore', '0863930148', 302, 220, NULL)
INTO member VALUES (518, 'Stephen', 'Taylor', '07/30/2002', '06/17/2013', '65 Upton Avenue, Ballygunner', '0862640027', 303, 220, NULL)
INTO member VALUES (519, 'Arthur', 'Long', '06/16/2001', '07/08/2016', '87 Bishops Lawn, Ballygunner', '0879002352', 304, 220, NULL)
INTO member VALUES (520, 'Robert', 'Smith', '05/15/1999', '08/09/2015', '99 Lismore Heights, Waterford', '0866666636', 305, 220, NULL)
INTO member VALUES (521, 'Russell', 'Howard', '04/28/1999', '09/15/2012', '87 Larchville, Waterford', '0860780477', 305, 220, NULL)
INTO member VALUES (522, 'Kevin', 'Campbell', '03/12/1988', '10/12/2000', '44 Ard Na Groi, Tramore', '0861030590', 306, 220, NULL)
INTO member VALUES (523, 'Will', 'Patterson', '02/01/2005', '11/03/2014', '77 Sweet Briar, Ferrybank', '0876310625', 300, 220, NULL)
INTO member VALUES (524, 'Gerald', 'Price', '01/01/2004', '12/20/2012', '555 Five Street, Waterford', '0858101547', 301, 220, NULL)
INTO member VALUES (525, 'James', 'Bennett', '12/29/2003', '01/26/2015', '910 Berkley Street, Waterford', '0863391273', 302, 220, NULL)
INTO member VALUES (526, 'Andrew', 'Young', '11/27/2002', '02/12/2012', 'Crimmut Lane, Waterford', '0871345631', 303, 220, NULL)
INTO member VALUES (527, 'Jesse', 'Lingard', ' 10/22/2001', '03/19/2014', '16 Slope Lane, Mooncoin', '0851443422', 304, 220, NULL)
INTO member VALUES (528, 'Greg', 'Washington', '09/04/1999', '04/30/2011', '12 The Grove, Annestown', '0894388209', 305, 220, NULL)
INTO member VALUES (529, 'Frank', 'Morris', '08/01/1985', '05/22/1995', '64 Pond Road, Tramore', '0861007709', 306, 220, NULL)
INTO member VALUES (530, 'Jimmy', 'Sanders', '07/08/2005', '06/12/1016', '97 River View, Woodstown', '0851433902', 300, 220, NULL)
INTO member VALUES (531, 'Todd', 'Garcia', '06/28/2004', '07/11/2016', '100 Bank Hills, Tramore', '0868923141', 301, 220, NULL)
INTO member VALUES (532, 'Paul', 'Reed', '05/07/2003', '08/25/2010', '32 The Stretch, Uptown', '0870642390', 302, 220, NULL)
INTO member VALUES (533, 'Dennis', 'Lewis', '04/30/2002', '09/29/2011', '44 Ballyback, Ballytown', '0851529738', 303, 220, NULL)
INTO member VALUES (534, 'Eoin', 'Hill', '03/22/2001', '10/01/2013', 'The Plaza, Johnstown', '0862586682', 304, 220, NULL)
INTO member VALUES (535, 'Terry', 'Perez', '02/14/1991', '11/06/2000', '49 Comeragh Park, Waterford', '0858424158', 306, 220, NULL)
INTO member VALUES (536, 'Earl', 'White', '01/12/1967', '12/24/1978', '23 Ashley Court, Waterford', '0872875072', NULL, 220, 1)
INTO member VALUES (537, 'Ryan', 'Anderson', '12/12/1988', '01/06/1998', 'The Cleaboy, Waterfford', '0861773702', NULL, 220, 1)
INTO member VALUES (538, 'Henry', 'Lee', '11/10/1977', '02/16/1989', '65 Killmurrin, Kill', '0863953949', NULL, 220, 1)
INTO member VALUES (539, 'Mark', 'Edwards', '10/09/1969', '03/17/1980', '954 Big Park, Boatstrand', '0857794657', NULL, 220, 1)
INTO member VALUES (540, 'Craig', 'Bailey', '09/08/1972', '04/09/1984', '88 The Parks,  Butlerstown', '0871214212', NULL, 220, 1)
SELECT * FROM dual;

/*Inserts for training*/
/*session_id, no_players, coach_id, team_id*/
INSERT ALL
INTO training VALUES (1000, '24', 100, 306)
INTO training VALUES (1001, '40', 101, 305)
INTO training VALUES (1002, '26', 102, 304)
INTO training VALUES (1003, '28', 103, 303)
INTO training VALUES (1004, '32', 104, 302)
INTO training VALUES (1005, '19', 105, 301)
INTO training VALUES (1006, '30', 106, 300)
SELECT * FROM dual;

/*Inserts for member payment*/
/*payment_id, member_id*/
INSERT ALL
INTO member_payment VALUES (100000, 500)
INTO member_payment VALUES (100001, 504)
INTO member_payment VALUES (100002, 509)
INTO member_payment VALUES (100003, 515)
INTO member_payment VALUES (100004, 520)
INTO member_payment VALUES (100005, 527)
INTO member_payment VALUES (100006, 528)
INTO member_payment VALUES (100007, 532)
INTO member_payment VALUES (100008, 538)
INTO member_payment VALUES (100009, 540)
INTO member_payment VALUES (100010, 529)
INTO member_payment VALUES (100011,	530)
SELECT * FROM dual;

/*Inserts for equipment*/
/*equioment_id, date_purchased, session_id*/
INSERT ALL
INTO equipment VALUES (9000, '10/04/2012', 1000)
INTO equipment VALUES (9001, '09/23/2013', NULL)
INTO equipment VALUES (9002, '04/08/2014', NULL)
INTO equipment VALUES (9003, '06/07/2015', 1003)
INTO equipment VALUES (9004, '08/12/2016', NULL)
INTO equipment VALUES (9005, '03/29/2011', NULL)
INTO equipment VALUES (9006, '07/22/2014', 1005)
INTO equipment VALUES (9007, '10/24/2015', NULL)
SELECT * FROM dual;

/*Inserts for Next of Kin*/
/*nok_id, fname, lname, ph_num, address, member_id*/
INSERT ALL
INTO next_of_kin VALUES (50, 'David', 'Lyons', '0861987335', '31 Moonvoy Valley, Tramore', 500)
INTO next_of_kin VALUES (51, 'Carol', 'Kelly', '0879742349', '16 Bridge Street, Waterford', 501)
INTO next_of_kin VALUES (52, 'Greg', 'Johnson', '0858151008', '19 Johns Hill, Waterford', 502)
INTO next_of_kin VALUES (53, 'John', 'Stewart', '0876680660', NULL, 503)
INTO next_of_kin VALUES (54, 'Bill', 'Cooper', '0860629166', NULL, 504)
INTO next_of_kin VALUES (55, 'Louise', 'Torres', '0872174718', '10 The Villas, Ballygunner', 505) 
INTO next_of_kin VALUES (56, 'Tim', 'Mitchell', '0857711531', NULL, 506)
SELECT * FROM dual;

/*Inserts for competition*/
/*comp_id, compname, team_id*/
INSERT ALL
INTO competition VALUES (1000000, 'Under 12 League', 300)
INTO competition VALUES (1000001, 'Munster Senior Cup', 306)
INTO competition VALUES (1000002, 'Under 18 Plate', 305)
INTO competition VALUES (1000003, 'J2 Senior League', 306)
INTO competition VALUES (1000004, 'Under 18 League', 305)
INTO competition VALUES (1000005, 'Under 16 Inter Cup', 304)
INTO competition VALUES (1000006, 'Under 13 League', 301)
INTO competition VALUES (1000007, 'Under 13 City Cup', 301)
INTO competition VALUES (1000008, 'Under 14 League', 302)
INTO competition VALUES (1000009, 'Under 15 League', 303)
INTO competition VALUES (1000010, 'Under 15 Munster Cup', 303)
INTO competition VALUES (1000011, 'Under 16 League', 304)
INTO competition VALUES (1000012, 'Under 18 Supercup', 305)
INTO competition VALUES (1000013, 'Under 12 League', 300)
INTO competition VALUES (1000014, 'Under 16 Irish Cup', 304)
SELECT * FROM dual;

/*Inserts for results*/
/*results_id, oppname, score, win_lose, comp_id*/
INSERT All
INTO results VALUES (1111100, 'Scariff', '32-12', 'win', 1000001)
INTO results VALUES (1111101, 'Carrick', '21-09', 'win', 1000000)
INTO results VALUES (1111102, 'Young Munster', '23-32', 'lose', 1000003)
INTO results VALUES (1111103, 'Waterpark', '20-11', 'win', 1000004)
INTO results VALUES (1111104, 'Thurles', '32-20', 'win', 1000002)
INTO results VALUES (1111105, 'Dingle', '09-12', 'lose', 1000005)
INTO results VALUES (1111106, 'Youghal', '29-16', 'win', 1000012)
INTO results VALUES (1111107, 'Barbarians', '13-32', 'lose', 1000006)
INTO results VALUES (1111108, 'Exeter', '45-17', 'win', 1000007)
INTO results VALUES (1111109, 'London Irish', '12-30', 'lose', 1000008)
INTO results VALUES (1111110, 'Saracens', '32-9', 'win', 1000009)
INTO results VALUES (1111111, 'Toulon', '28-26', 'win', 1000010)
INTO results VALUES (1111112, 'Racing 92', '12-32', 'lose', 1000011)
INTO results VALUES (1111113, 'The Cheifs', '19-12', 'win', 1000013)
INTO results VALUES (1111114, 'Waerpark', '45-25', 'win', 1000014)
SELECT * FROM dual;