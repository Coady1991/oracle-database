/*Select statement for database query*/

/*Select statements to view how many players are currently on each team*/
SELECT member_id, fname, lname
FROM member
WHERE team_id = 300;

SELECT member_id, fname, lname
FROM member
WHERE team_id = 301;

SELECT member_id, fname, lname
FROM member
WHERE team_id = 302;

SELECT member_id, fname, lname
FROM member
WHERE team_id = 303;

SELECT member_id, fname, lname
FROM member
WHERE team_id = 304;

SELECT member_id, fname, lname
FROM member
WHERE team_id = 305;

SELECT member_id, fname, lname
FROM member
WHERE team_id = 306;

/*Select statement to view which members are part of the committee*/
SELECT member_id, fname, lname
FROM member
WHERE committee_id = 1;

/*Select statements to view which games team won/lost and who the opponent was*/
SELECT results_id, oppname, score
FROM results
WHERE win_lose = 'win';

SELECT results_id, oppname, score
FROM results
WHERE win_lose = 'lose';

/*Select statements to view how old equipment by checking date of purchase*/
SELECT equipment_id
FROM equipment
WHERE date_purchased < '01/01/2012';

/*Select statements to view how many members have joined from a certain date, to view the growth of the club since that year*/
SELECT member_id, fname, lname, date_joined
FROM member
WHERE date_joined > '01/01/2012';

/*Select statement to view how many members joined in a single year, to view growth of the club in one year*/
SELECT member_id, fname, lname, date_joined
FROM member
WHERE date_joined > '01/01/2012'
AND date_joined < '01/01/2013';

/*Select statement to view how many players were training on a specific team*/
SELECT session_id, team_id
FROM training
WHERE no_players > '24';

/*Select statements to view which competitions a team is in*/
SELECT compname
FROM competition
WHERE team_id = 300;

SELECT compname
FROM competition
WHERE team_id = 301;

SELECT compname
FROM competition
WHERE team_id = 302;

SELECT compname
FROM competition
WHERE team_id = 303;

SELECT compname
FROM competition
WHERE team_id = 304;

SELECT compname
FROM competition
WHERE team_id = 305;

SELECT compname
FROM competition
WHERE team_id = 306;

/*Select Statement to order members by Date of Birth*/
SELECT fname, lname, dob
FROM member
ORDER BY dob;

/*Select statement to order memebrs by date joined*/
SELECT fname, lname, date_joined
FROM member
ORDER BY date_joined;

/*Select statement that cross joins competition and results tables*/
SELECT competition.comp_id,
competition.compname,
results.oppname,
results.score,
results.win_lose
FROM competition
CROSS JOIN results
WHERE competition.comp_id = results.comp_id;

/*Select statement that cross joins competiton and results table for a specific team*/
SELECT competition.comp_id AS "Competition ID",
competition.compname AS "Competition",
results.oppname AS "Opposition",
results.score,
results.win_lose
FROM competition
CROSS JOIN results
WHERE competition.comp_id = results.comp_id
AND competition.team_id = 304;

/*Select statement that cross joins competition and results for a specific team and specific competition*/
SELECT competition.comp_id AS "Competition ID",
competition.compname AS "Competition",
results.oppname AS "Opposition",
results.score,
results.win_lose
FROM competition
CROSS JOIN results
WHERE competition.comp_id = results.comp_id
AND competition.team_id = 306
AND competition.compname = 'Munster Senior Cup';

/*Select statement that cross joins training and team tables*/
SELECT training.session_id,
training.no_players,
team.teamname
FROM training
CROSS JOIN team
WHERE training.team_id = team.team_id;

/*Select statement that cross joins coach and team tables*/
SELECT coach.fname,
coach.lname,
team.teamname
FROM coach
CROSS JOIN team
WHERE coach.coach_id = team.coach_id;

/*Select statement that cross joins team and competition*/
SELECT team.teamname,
competition.compname
FROM team
CROSS JOIN competition
WHERE team.team_id = competition.team_id;

/*Select statement that cross joins member and member payment*/
SELECT member.fname,
member.lname,
member_payment.payment_id
FROM member
CROSS JOIN member_payment
WHERE member.member_id = member_payment.member_id;

/*Select statement that views average player attendence in training table*/
SELECT AVG(no_players) AS "Average Player Attendence"
FROM training
WHERE training.team_id = 300;

/*Select statement that vies the maximum player attendence in training table*/
SELECT Max(no_players) AS "Highest Player Attendence"
FROM training
WHERE training.team_id = 301;

/*Select statement that views the lowest player attendence in training table*/
SELECT Min(no_players) AS "Lowest Player Attendence"
FROM training
WHERE training.team_id = 302;

/*Select statement that views the member with their Next of Kin and contact Number*/
SELECT member.fname || ' ' || member.lname AS "Member",
next_of_kin.fname || ' ' || next_of_kin.lname AS "Next of Kin",
next_of_kin.ph_num AS "Next of Kin Phone Number"
FROM member
CROSS JOIN next_of_kin
WHERE member.member_id = next_of_kin.member_id;

/*Grant statement to allow user form the committee access to members table*/
GRANT SELECT, INSERT, UPDATE, DELETE ON members TO Craig Bailey;