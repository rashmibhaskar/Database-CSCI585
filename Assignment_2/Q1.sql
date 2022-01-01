/*DB software used - MySQL*/

CREATE DATABASE COVID_TRACING_SYSTEM;
USE COVID_TRACING_SYSTEM;

CREATE TABLE EMPLOYEE
(e_id INTEGER NOT NULL,
name varchar(100) NOT NULL,
office_no INTEGER NOT NULL,
floor_no INTEGER NOT NULL,
phone_no INTEGER ,
email_address VARCHAR(100),
PRIMARY KEY (e_id));

INSERT INTO EMPLOYEE VALUES (12001,'A',1,1,2135739935,'r@gmail.com');
INSERT INTO EMPLOYEE VALUES (12002,'B',2,1,2135739936,'b@gmail.com');
INSERT INTO EMPLOYEE VALUES (12003,'C',3,1,2135739937,'c@gmail.com');
INSERT INTO EMPLOYEE VALUES (12004,'D',4,1,2135739938,'d@gmail.com');
INSERT INTO EMPLOYEE VALUES (12005,'E',5,1,2135739939,'e@gmail.com');
INSERT INTO EMPLOYEE VALUES (12006,'F',6,2,2135739940,'f@gmail.com');
INSERT INTO EMPLOYEE VALUES (12007,'G',7,2,2135739941,'g@gmail.com');
INSERT INTO EMPLOYEE VALUES (12008,'H',8,2,2135739942,'h@gmail.com');
INSERT INTO EMPLOYEE VALUES (12009,'I',9,3,2135739943,'i@gmail.com');
INSERT INTO EMPLOYEE VALUES (12010,'J',10,3,2135739944,'j@gmail.com');
INSERT INTO EMPLOYEE VALUES (12011,'K',11,3,2135739945,'k@gmail.com');
INSERT INTO EMPLOYEE VALUES (12012,'L',12,3,2135739946,'l@gmail.com');
INSERT INTO EMPLOYEE VALUES (12013,'M',13,4,2135739947,'m@gmail.com');
INSERT INTO EMPLOYEE VALUES (12014,'N',14,4,2135739948,'n@gmail.com');
INSERT INTO EMPLOYEE VALUES (12015,'O',16,5,2135739949,'o@gmail.com');

SELECT * FROM EMPLOYEE;

CREATE TABLE SYMPTOM
(row_id INTEGER auto_increment,
e_id INTEGER NOT NULL,
date_reported date NOT NULL,
symptom_id INTEGER NOT NULL,
PRIMARY KEY (row_id),
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id));
ALTER TABLE SYMPTOM AUTO_INCREMENT=1;

INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12001,'2021-10-10',1);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12003,'2021-10-11',1);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12002,'2021-10-11',3);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12006,'2021-10-12',1);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12008,'2021-10-13',5);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12009,'2021-10-13',5);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12004,'2021-10-13',5);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12005,'2021-10-13',5);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12010,'2021-10-14',1);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12013,'2021-10-14',5);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12011,'2021-10-15',1);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12012,'2021-10-15',1);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12007,'2021-10-16',5);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12002,'2021-10-16',3);
INSERT INTO SYMPTOM (e_id,date_reported,symptom_id) VALUES (12002,'2021-10-16',4);

SELECT * FROM SYMPTOM;

CREATE TABLE TEST
(test_id INTEGER auto_increment,
location varchar(10),
test_date DATE NOT NULL,
test_time INTEGER NOT NULL,
e_id INTEGER NOT NULL,
test_result VARCHAR(8),
PRIMARY KEY (test_id),
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id));
ALTER TABLE TEST auto_increment=100;

INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('company','2021-10-10',1230,12001,'positive');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('company','2021-10-11',1230,12003,'negative');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('company','2021-10-11',1230,12002,'positive');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('hospital','2021-10-12',1230,12006,'negative');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('hospital','2021-10-13',1230,12008,'negative');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('company','2021-10-13',1230,12009,'negative');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('company','2021-10-13',1230,12004,'negative');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('company','2021-10-13',1230,12005,'positive');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('hospital','2021-10-14',1230,12010,'positive');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('hospital','2021-10-14',1230,12013,'positive');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('company','2021-10-15',1230,12011,'negative');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('hospital','2021-10-15',1230,12012,'positive');
INSERT INTO TEST (location,test_date,test_time,e_id,test_result) VALUES ('hospital','2021-10-16',1230,12007,'negative');

SELECT * FROM TEST;

CREATE TABLE SCAN
(scan_id INTEGER auto_increment,
scan_date DATE NOT NULL,
scan_time INTEGER NOT NULL,
e_id INTEGER NOT NULL,
temperature INTEGER NOT NULL,
PRIMARY KEY (scan_id),
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id)
);
ALTER TABLE SCAN auto_increment=8000;

INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-09',1130,12001,204);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-09',1140,12013,204);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-09',1200,12011,204);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-10',0830,12003,204);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-10',0930,12002,204);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-10',1000,12009,203);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-10',1130,12001,212);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-11',0800,12003,203);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-11',1030,12002,212);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-12',0830,12006,203);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-12',0900,12008,204);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-12',0930,12009,202);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-12',1030,12004,204);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-13',0930,12015,203);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-13',1000,12005,212);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-14',0930,12010,212);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-14',0940,12013,212);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-15',1030,12011,204);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-16',1030,12012,212);
INSERT INTO SCAN (scan_date,scan_time,e_id,temperature) VALUES ('2021-10-16',1050,12007,203);

SELECT * FROM SCAN;

CREATE TABLE MEETING
(meeting_id INTEGER auto_increment,
e_id INTEGER NOT NULL,
room_no INTEGER NOT NULL,
floor_no INTEGER NOT NULL,
meeting_start_time INTEGER NOT NULL,
PRIMARY KEY (meeting_id),
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id)
);
ALTER TABLE MEETING auto_increment=200;

INSERT INTO MEETING (e_id,room_no,floor_no,meeting_start_time) VALUES (12001,16,2,1200);
INSERT INTO MEETING (e_id,room_no,floor_no,meeting_start_time) VALUES (12002,16,2,1200);
INSERT INTO MEETING (e_id,room_no,floor_no,meeting_start_time) VALUES (12003,16,2,1200);
INSERT INTO MEETING (e_id,room_no,floor_no,meeting_start_time) VALUES (12004,16,2,1200);
INSERT INTO MEETING (e_id,room_no,floor_no,meeting_start_time) VALUES (12005,16,2,1200);

SELECT * FROM MEETING;

CREATE TABLE NOTIFICATION
(notification_id INTEGER auto_increment,
e_id INTEGER NOT NULL,
notification_date DATE NOT NULL,
notification_type VARCHAR(20),
PRIMARY KEY (notification_id),
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id)
);
ALTER TABLE NOTIFICATION auto_increment=500;

INSERT INTO NOTIFICATION (e_id,notification_date,notification_type) VALUES (12002,'2021-10-10','mandatory');
INSERT INTO NOTIFICATION (e_id,notification_date,notification_type) VALUES (12003,'2021-10-10','mandatory');
INSERT INTO NOTIFICATION (e_id,notification_date,notification_type) VALUES (12004,'2021-10-10','mandatory');
INSERT INTO NOTIFICATION (e_id,notification_date,notification_type) VALUES (12005,'2021-10-10','mandatory');
INSERT INTO NOTIFICATION (e_id,notification_date,notification_type) VALUES (12009,'2021-10-13','mandatory');
INSERT INTO NOTIFICATION (e_id,notification_date,notification_type) VALUES (12010,'2021-10-13','mandatory');
INSERT INTO NOTIFICATION (e_id,notification_date,notification_type) VALUES (12011,'2021-10-13','mandatory');
INSERT INTO NOTIFICATION (e_id,notification_date,notification_type) VALUES (12012,'2021-10-14','mandatory');
INSERT INTO NOTIFICATION (e_id,notification_date,notification_type) VALUES (12013,'2021-10-14','optional');
INSERT INTO NOTIFICATION (e_id,notification_date,notification_type) VALUES (12014,'2021-10-14','optional');

SELECT * FROM NOTIFICATION;

CREATE TABLE CASES
(case_id INTEGER auto_increment,
e_id INTEGER NOT NULL,
case_date DATE NOT NULL,
resolution VARCHAR(20),
PRIMARY KEY (case_id),
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id)
);
ALTER TABLE CASES auto_increment=700;

INSERT INTO CASES (e_id,case_date) VALUES (12001,'2021-10-10');
INSERT INTO CASES (e_id,case_date) VALUES (12002,'2021-10-11');
INSERT INTO CASES (e_id,case_date) VALUES (12005,'2021-10-13');
INSERT INTO CASES (e_id,case_date) VALUES (12010,'2021-10-14');
INSERT INTO CASES (e_id,case_date) VALUES (12013,'2021-10-14');
INSERT INTO CASES (e_id,case_date) VALUES (12012,'2021-10-15');

SELECT * FROM CASES;

CREATE TABLE HEALTH_STATUS
(status_row_id INTEGER auto_increment,
e_id INTEGER NOT NULL,
status_date DATE NOT NULL,
status VARCHAR(20),
PRIMARY KEY (status_row_id),
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id)
);
ALTER TABLE HEALTH_STATUS auto_increment=6000;

INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12001,'2021-10-10','sick');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12002,'2021-10-11','sick');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12001,'2021-10-11','sick');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12005,'2021-10-14','hospitalized');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12010,'2021-10-14','sick');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12013,'2021-10-14','sick');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12001,'2021-10-14','sick');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12002,'2021-10-14','sick');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12012,'2021-10-15','sick');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12005,'2021-10-15','hospitalized');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12010,'2021-10-15','sick');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12013,'2021-10-15','sick');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12001,'2021-10-15','sick');
INSERT INTO HEALTH_STATUS (e_id,status_date,status) VALUES (12002,'2021-10-15','sick');

SELECT * FROM HEALTH_STATUS;