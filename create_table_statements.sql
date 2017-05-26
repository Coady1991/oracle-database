CREATE TABLE rugby_club
(club_id VARCHAR2 (8) CONSTRAINT rugby_club_club_id_pk PRIMARY KEY);

CREATE TABLE coach
(coach_id VARCHAR2 (8) CONSTRAINT coach_coach_id_pk PRIMARY KEY,
 fname VARCHAR2 (15) NOT NULL,
 lname VARCHAR2 (15) NOT NULL,
 coachingcert VARCHAR2 (1) DEFAULT 'Y' NOT NULL,
 club_id VARCHAR2 (8) NOT NULL,
 CONSTRAINT coach_club_id_fk FOREIGN KEY (club_id) REFERENCES rugby_club(club_id));

CREATE TABLE committee
(committee_id VARCHAR2 (8) CONSTRAINT committee_committee_id_pk PRIMARY KEY);

CREATE TABLE team
(team_id VARCHAR2 (8) CONSTRAINT team_team_id_pk PRIMARY KEY,
 teamname VARCHAR2 (20) NOT NULL,
 coach_id VARCHAR2 (8) NOT NULL,
 CONSTRAINT team_coach_id_fk FOREIGN KEY (coach_id) REFERENCES coach(coach_id));

CREATE TABLE member
(member_id VARCHAR2 (8) CONSTRAINT member_member_id_pk PRIMARY KEY,
 fname VARCHAR2 (15) NOT NULL,
 lname VARCHAR2 (15) NOT NULL,
 dob DATE NOT NULL,
 date_joined DATE NOT NULL,
 address VARCHAR2 (50) NOT NULL,
 ph_num VARCHAR2 (12) NOT NULL,
 team_id VARCHAR2 (8),
 club_id VARCHAR2 (8) NOT NULL,
 committee_id VARCHAR2 (8),
 CONSTRAINT member_ph_num_uk UNIQUE (ph_num),
 CONSTRAINT member_team_id_fk FOREIGN KEY (team_id) REFERENCES team(team_id),
 CONSTRAINT member_club_id_fk FOREIGN KEY (club_id) REFERENCES rugby_club(club_id),
 CONSTRAINT member_committee_id_fk FOREIGN KEY (committee_id) REFERENCES committee(committee_id));

CREATE TABLE training
(session_id VARCHAR2 (8) CONSTRAINT training_session_id_pk PRIMARY KEY,
 no_players VARCHAR2 (3) NOT NULL,
 coach_id VARCHAR2 (8) NOT NULL,
 team_id VARCHAR2 (8) NOT NULL,
 CONSTRAINT training_coach_id_fk FOREIGN KEY (coach_id) REFERENCES coach(coach_id),
 CONSTRAINT training_team_id_fk FOREIGN KEY (team_id) REFERENCES team(team_id));

CREATE TABLE member_payment
(payment_id VARCHAR2 (8) CONSTRAINT member_payment_payment_id_pk PRIMARY KEY,
 member_id VARCHAR2 (8) NOT NULL,
 CONSTRAINT member_payment_member_id_fk FOREIGN KEY (member_id) REFERENCES member(member_id));

CREATE TABLE equipment
(equipment_id VARCHAR2 (8) CONSTRAINT equipment_equipment_id_pk PRIMARY KEY,
 date_purchased DATE NOT NULL,
 session_id VARCHAR2 (8),
 CONSTRAINT equipment_session_id_fk FOREIGN KEY (session_id) REFERENCES training(session_id));

CREATE TABLE next_of_kin
(nok_id VARCHAR2(8) CONSTRAINT next_of_kin_nok_id_pk PRIMARY KEY,
 fname VARCHAR2 (15) NOT NULL,
 lname VARCHAR2 (15) NOT NULL,
 ph_num VARCHAR2 (12) NOT NULL,
 address VARCHAR2 (50),
 member_id VARCHAR2 (8) NOT NULL,
 CONSTRAINT next_of_kin_member_id_fk FOREIGN KEY (member_id) REFERENCES member(member_id));

CREATE TABLE competition
(comp_id VARCHAR2 (8) CONSTRAINT competition_comp_id_pk PRIMARY KEY,
 compname VARCHAR2 (20) NOT NULL,
 team_id VARCHAR2 (8) NOT NULL,
 CONSTRAINT competition_team_id_fk FOREIGN KEY (team_id) REFERENCES team(team_id));

CREATE TABLE results
(results_id VARCHAR2 (8) CONSTRAINT results_results_id_pk PRIMARY KEY,
 oppname VARCHAR2 (20) NOT NULL,
 score VARCHAR2 (8) NOT NULL,
 win_lose VARCHAR2 (4) NOT NULL,
 comp_id VARCHAR2 (8) NOT NULL,
 CONSTRAINT results_comp_id_fk FOREIGN KEY (comp_id) REFERENCES competition (comp_id));