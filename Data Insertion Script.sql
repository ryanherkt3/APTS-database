INSERT INTO REGION VALUES('NW', 'Northwest');
INSERT INTO REGION VALUES('SW', 'Southwest');
INSERT INTO REGION VALUES('MN', 'Midwest North');
INSERT INTO REGION VALUES('MS', 'Midwest South');
INSERT INTO REGION VALUES('NE', 'Northeast');
INSERT INTO REGION VALUES('SE', 'Southeast');
commit;

INSERT INTO CUSTOMER VALUES (1, 'NW', 'See Rocks', 021997356);
INSERT INTO CUSTOMER VALUES (2, 'SW', 'BoardPro', 093762249);
INSERT INTO CUSTOMER VALUES (3, 'MN', 'USA Rugby', 5594437);
INSERT INTO CUSTOMER VALUES (4, 'MS', 'Oxford University', 9923467);
INSERT INTO CUSTOMER VALUES (5, 'NE', 'AUT University', null);
INSERT INTO CUSTOMER VALUES (6, 'SE', 'Department of Conservation NZ', 0800447321);
INSERT INTO CUSTOMER VALUES (7, 'NW', 'Skyline Rotorua', null);
commit;

--Manager ID's: NW:30, NE:29, SE:28, MN:27, SW:24, MS:1
alter table employee 
modify employee_last_name varchar2(20)
modify employee_first_name varchar2(20);
INSERT INTO EMPLOYEE VALUES(30, null, 'NW', 'Connor', null, 'Sean', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(29, null, 'NE', 'Kenyon', null, 'Tiffany', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(28, null, 'SE', 'Mudd', null, 'Roger', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(27, null, 'MN', 'Paine', null, 'Brad', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(24, null, 'SW', 'Newton', null, 'Christopher', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(1, null, 'MS', 'Seaton', null, 'Amy', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(26, 29, 'NE', 'Bender', null, 'Larry', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(25, 30, 'NW', 'Kilby', null, 'Surgena', '25-Mar-16');
INSERT INTO EMPLOYEE VALUES(23, 24, 'SW', 'Duarte', null, 'Miriam', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(22, 29, 'NE', 'Bible', null, 'Hannah', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(21, 28, 'SE', 'Cope', null, 'Leslie', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(20, 27, 'MN', 'Rogers', null, 'Adam', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(19, 30, 'NW', 'Smith', null, 'Jose', '15-Mar-16');
INSERT INTO EMPLOYEE VALUES(18, 28, 'SE', 'Batts', null, 'Melissa', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(17, 30, 'NW', 'Ellis', null, 'Maria', '21-Mar-16');
INSERT INTO EMPLOYEE VALUES(16, 30, 'NW', 'Summers', null, 'Anna', '21-Mar-16');
INSERT INTO EMPLOYEE VALUES(15, 30, 'NW', 'Ephanor', null, 'Victor', '21-Mar-16');
INSERT INTO EMPLOYEE VALUES(14, 29, 'NE', 'Kattan', null, 'Chris', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(13, 27, 'MN', 'Pascoe', null, 'Jonathan', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(12, 30, 'NW', 'Smith', null, 'Mary', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(11, 28, 'SE', 'Yarbrough', null, 'Peter', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(10, 30, 'NW', 'Burklow', null, 'Shane', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(9, 29, 'NE', 'Chandler', null, 'Joseph', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(8, 30, 'NW', 'Zebras', null, 'Steve', '11-Mar-16');
INSERT INTO EMPLOYEE VALUES(7, 30, 'NW', 'Bush', null, 'Emily', '11-Mar-16');
INSERT INTO EMPLOYEE VALUES(6, 28, 'SE', 'Robbins', null, 'Erin', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(5, 29, 'NE', 'Sewell', null, 'Beth', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(4, 27, 'MN', 'Craig', null, 'Brett', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(3, 27, 'MN', 'Underwood', null, 'Trish', '01-Mar-16');
INSERT INTO EMPLOYEE VALUES(2, 27, 'NE', 'Williams', null, 'Josh', '01-Mar-16');

alter table skill modify skill_rate_of_pay number(5,2);
INSERT INTO SKILL VALUES(1, 'Data Entry I', 30);
INSERT INTO SKILL VALUES(2, 'Data Entry II', 45);
INSERT INTO SKILL VALUES(3, 'Systems Analyst I', 30);
INSERT INTO SKILL VALUES(4, 'Systems Analyst II', 45);
INSERT INTO SKILL VALUES(5, 'DB Designer I', 60);
INSERT INTO SKILL VALUES(6, 'DB Designer II', 90);
INSERT INTO SKILL VALUES(7, 'Oracle Developer I', 50);
INSERT INTO SKILL VALUES(8, 'Oracle Developer II', 75);
INSERT INTO SKILL VALUES(9, 'C++ I', 80);
INSERT INTO SKILL VALUES(10, 'C++ II', 120);
INSERT INTO SKILL VALUES(11, 'ASP I', 60);
INSERT INTO SKILL VALUES(12, 'ASP II', 80);
INSERT INTO SKILL VALUES(13, 'Oracle DBA', 50);
INSERT INTO SKILL VALUES(14, 'SQL Server DBA', 70);
INSERT INTO SKILL VALUES(15, 'Network Engineer I', 70);
INSERT INTO SKILL VALUES(16, 'Network Engineer II', 105);
INSERT INTO SKILL VALUES(17, 'Web Administrator', 120);
INSERT INTO SKILL VALUES(18, 'Technical Writer', 100);
INSERT INTO SKILL VALUES(19, 'Project Manager', 150);
commit;

INSERT INTO skillsinventory VALUES(1,1);
INSERT INTO skillsinventory VALUES(2,1);
INSERT INTO skillsinventory VALUES(3,1);
INSERT INTO skillsinventory VALUES(1,2);
INSERT INTO skillsinventory VALUES(2,2);
INSERT INTO skillsinventory VALUES(4,3);
INSERT INTO skillsinventory VALUES(5,3);
INSERT INTO skillsinventory VALUES(6,3);
INSERT INTO skillsinventory VALUES(7,3);
INSERT INTO skillsinventory VALUES(8,3);
INSERT INTO skillsinventory VALUES(9,4);
INSERT INTO skillsinventory VALUES(10,4);
INSERT INTO skillsinventory VALUES(6,4);
INSERT INTO skillsinventory VALUES(11,5);
INSERT INTO skillsinventory VALUES(12,5);
INSERT INTO skillsinventory VALUES(11,6);
INSERT INTO skillsinventory VALUES(13,6);
INSERT INTO skillsinventory VALUES(14,7);
INSERT INTO skillsinventory VALUES(15,7);
INSERT INTO skillsinventory VALUES(16,7);
INSERT INTO skillsinventory VALUES(17,7);
INSERT INTO skillsinventory VALUES(14,8);
INSERT INTO skillsinventory VALUES(15,8);
INSERT INTO skillsinventory VALUES(18,8);
INSERT INTO skillsinventory VALUES(19,9);
INSERT INTO skillsinventory VALUES(20,9);
INSERT INTO skillsinventory VALUES(21,9);
INSERT INTO skillsinventory VALUES(20,10);
INSERT INTO skillsinventory VALUES(22,10);
INSERT INTO skillsinventory VALUES(23,11);
INSERT INTO skillsinventory VALUES(7,11);
INSERT INTO skillsinventory VALUES(23,12);
INSERT INTO skillsinventory VALUES(24,12);
INSERT INTO skillsinventory VALUES(19,13);
INSERT INTO skillsinventory VALUES(13,13);
INSERT INTO skillsinventory VALUES(11,14);
INSERT INTO skillsinventory VALUES(19,14);
INSERT INTO skillsinventory VALUES(7,15);
INSERT INTO skillsinventory VALUES(12,15);
INSERT INTO skillsinventory VALUES(7,16);
INSERT INTO skillsinventory VALUES(12,16);
INSERT INTO skillsinventory VALUES(7,17);
INSERT INTO skillsinventory VALUES(12,17);
INSERT INTO skillsinventory VALUES(24,17);
INSERT INTO skillsinventory VALUES(25,18);
INSERT INTO skillsinventory VALUES(26,18);
INSERT INTO skillsinventory VALUES(27,19);
INSERT INTO skillsinventory VALUES(28,19);
INSERT INTO skillsinventory VALUES(29,19);
INSERT INTO skillsinventory VALUES(30,19);
commit;

alter table project
modify project_estimated_budget number(7,2)
modify project_actual_cost number(7,2);
--See Rocks, NW
INSERT INTO project VALUES(1, 30, 1, 'Sales Management System', '02-Dec-10', '01-Mar-16', '01-Jul-16', 20000, '01-Mar-16', '01-Jul-16', 15500);
--BoardPro, SW
INSERT INTO project VALUES(2, 24, 2, 'Meeting Minutes System', '12-Nov-15', '01-Mar-16', '01-Jul-16', 15000, '01-Mar-16', '01-Jul-16', 11000);
--USA Rugby, MN
INSERT INTO project VALUES(3, 27, 3, 'Player Record System', '24-Jun-17', '05-Aug-17', '12-Jan-18', 25000, '05-Aug-17', '12-Jan-18', 28000);
--Oxford, MS
INSERT INTO project VALUES(4, 1, 4, 'Student Management System', '12-May-14', '12-Jul-14', '08-Nov-14', 40000, '12-Jul-14', '08-Nov-14', 40000);
--AUT, NE
INSERT INTO project VALUES(5, 29, 5, 'Student Management System', '16-Oct-19', '18-Oct-19', '02-Feb-20', 20000, '18-Oct-19', '02-Feb-20', 20000);        
COMMIT;

alter table task
drop constraint TASK_DATE_CK;
alter table task
add constraint TASK_DATE_CK CHECK (task_end_date >= task_start_date);
INSERT INTO TASK VALUES(1, 'Initial Interview', '01-Mar-16', '06-Mar-16');
INSERT INTO TASK VALUES(2, 'Database Design', '11-Mar-16', '15-Mar-16');
INSERT INTO TASK VALUES(3, 'System Design', '11-Mar-16', '12-Apr-16');
INSERT INTO TASK VALUES(4, 'Database Implementation', '18-Mar-16', '22-Mar-16');
INSERT INTO TASK VALUES(5, 'System Coding and Testing', '25-Mar-16', '20-May-16');
INSERT INTO TASK VALUES(6, 'System Documentation', '25-Mar-16', '07-Jun-16');
INSERT INTO TASK VALUES(7, 'Final Evaluation', '10-Jun-16', '14-Jun-16');
INSERT INTO TASK VALUES(8, 'On-Site System Online and Data Loading', '17-Jun-16', '21-Jun-16');
INSERT INTO TASK VALUES(9, 'Sign-Off', '01-Jul-16', '01-Jul-16');
commit;

--Task: 1, Skill(s): 19, 4, 5
INSERT INTO taskskills VALUES(1, 19, 1);
INSERT INTO taskskills VALUES(1, 4, 1);
INSERT INTO taskskills VALUES(1, 5, 1);
--Task: 2, Skill(s): 5
INSERT INTO taskskills VALUES(2, 5, 1);
--Task: 3, Skill(s): 4, 3
INSERT INTO taskskills VALUES(3, 4, 1);
INSERT INTO taskskills VALUES(3, 3, 2);
--Task: 4, Skill(s): 13
INSERT INTO taskskills VALUES(4, 13, 1);
--Task: 5, Skill(s): 7, 8, 13
INSERT INTO taskskills VALUES(5, 7, 2);
INSERT INTO taskskills VALUES(5, 8, 1);
INSERT INTO taskskills VALUES(5, 13, 1);
--Task: 6, Skill(s): 18
INSERT INTO taskskills VALUES(6, 18, 1);
--Task: 7, Skill(s): 19, 4, 5, 8
INSERT INTO taskskills VALUES(7, 19, 1);
INSERT INTO taskskills VALUES(7, 4, 1);
INSERT INTO taskskills VALUES(7, 5, 1);
INSERT INTO taskskills VALUES(7, 8, 1);
--Task: 8, Skill(s): 19, 4, 5, 8
INSERT INTO taskskills VALUES(8, 19, 1);
INSERT INTO taskskills VALUES(8, 4, 1);
INSERT INTO taskskills VALUES(8, 5, 1);
INSERT INTO taskskills VALUES(8, 8, 1);
--Task: 9, Skill(s): 19
INSERT INTO taskskills VALUES(9, 19, 1);
commit;

--Task: 1, Skill(s): 19, 4, 5
INSERT INTO schedule VALUES(1, 1, 19);
INSERT INTO schedule VALUES(1, 1, 4);
INSERT INTO schedule VALUES(1, 1, 5);
--Task: 2, Skill(s): 5
INSERT INTO schedule VALUES(1, 2, 5);
--Task: 3, Skill(s): 4, 3
INSERT INTO schedule VALUES(1, 3, 4);
INSERT INTO schedule VALUES(1, 3, 3);
--Task: 4, Skill(s): 13
INSERT INTO schedule VALUES(1, 4, 13);
--Task: 5, Skill(s): 7, 8, 13
INSERT INTO schedule VALUES(1, 5, 7);
INSERT INTO schedule VALUES(1, 5, 8);
INSERT INTO schedule VALUES(1, 5, 13);
--Task: 6, Skill(s): 18
INSERT INTO schedule VALUES(1, 6, 18);
--Task: 7, Skill(s): 19, 4, 5, 8
INSERT INTO schedule VALUES(1, 7, 19);
INSERT INTO schedule VALUES(1, 7, 4);
INSERT INTO schedule VALUES(1, 7, 5);
INSERT INTO schedule VALUES(1, 7, 8);
--Task: 8, Skill(s): 19, 4, 5, 8
INSERT INTO schedule VALUES(1, 8, 19);
INSERT INTO schedule VALUES(1, 8, 4);
INSERT INTO schedule VALUES(1, 8, 5);
INSERT INTO schedule VALUES(1, 8, 8);
--Task: 9, Skill(s): 19
INSERT INTO schedule VALUES(1, 9, 19);
commit;

alter table assignment
drop constraint ASSIGNMENT_DATE_CK;
alter table assignment
add constraint ASSIGNMENT_DATE_CK CHECK 
(assignment_end_date >= assignment_start_date);
--Task 1:
INSERT INTO ASSIGNMENT VALUES(101, 30, 1, 1, 19, '01-Mar-16', '06-Mar-16');
INSERT INTO ASSIGNMENT VALUES(102, 10, 1, 1, 4, '01-Mar-16', '06-Mar-16');
INSERT INTO ASSIGNMENT VALUES(103, 12, 1, 1, 5, '01-Mar-16', '06-Mar-16');
--Task 2:
INSERT INTO ASSIGNMENT VALUES(104, 12, 1, 2, 5, '11-Mar-16', '14-Mar-16');
--Task 3:
INSERT INTO ASSIGNMENT VALUES(105, 10, 1, 3, 4, '11-Mar-16', null);
INSERT INTO ASSIGNMENT VALUES(106, 7, 1, 3, 3, '11-Mar-16', null);
INSERT INTO ASSIGNMENT VALUES(107, 8, 1, 3, 3, '11-Mar-16', null);
--Task 4:
INSERT INTO ASSIGNMENT VALUES(108, 19, 1, 4, 13, '15-Mar-16', '19-Mar-16');
--Task 5:
INSERT INTO ASSIGNMENT VALUES(109, 16, 1, 5, 7, '21-Mar-16', null);
INSERT INTO ASSIGNMENT VALUES(110, 17, 1, 5, 7, '21-Mar-16', null);
INSERT INTO ASSIGNMENT VALUES(111, 15, 1, 5, 8, '21-Mar-16', null);
INSERT INTO ASSIGNMENT VALUES(112, 19, 1, 5, 13, '21-Mar-16', null);
--Task 6:
INSERT INTO ASSIGNMENT VALUES(113, 25, 1, 6, 18, '25-Mar-16', null);
commit;

alter table bill modify bill_cost number(6,2);
insert into bill values(1, 1, 8000);
insert into bill values(2, 2, 5000);
insert into bill values(3, 3, 6500);
insert into bill values(4, 4, 9250);
insert into bill values(5, 5, 7000);
commit;

alter table log
drop CONSTRAINT log_pk;
alter table log
add CONSTRAINT log_pk PRIMARY KEY (log_date, assignment_id);
INSERT INTO LOG VALUES('01-Mar-16', 10, 1, 102, 4);
INSERT INTO LOG VALUES('01-Mar-16', 30, 1, 101, 4);
INSERT INTO LOG VALUES('01-Mar-16', 12, 1, 103, 4);

INSERT INTO LOG VALUES('08-Mar-16', 10, 1, 102, 24);
INSERT INTO LOG VALUES('08-Mar-16', 30, 1, 101, 24);
INSERT INTO LOG VALUES('08-Mar-16', 12, 1, 103, 24);

INSERT INTO LOG VALUES('15-Mar-16', 10, 1, 105, 40);
INSERT INTO LOG VALUES('15-Mar-16', 7, 1, 106, 40);
INSERT INTO LOG VALUES('15-Mar-16', 19, 1, 108, 6);
INSERT INTO LOG VALUES('15-Mar-16', 12, 1, 104, 32);
INSERT INTO LOG VALUES('15-Mar-16', 8, 1, 107, 35);

INSERT INTO LOG VALUES('22-Mar-16', 10, null, 105, 40);
INSERT INTO LOG VALUES('22-Mar-16', 7, null, 106, 40);
INSERT INTO LOG VALUES('22-Mar-16', 17, null, 110, 12);
INSERT INTO LOG VALUES('22-Mar-16', 15, null, 111, 12);
INSERT INTO LOG VALUES('22-Mar-16', 19, null, 108, 12);
INSERT INTO LOG VALUES('22-Mar-16', 19, null, 112, 12);
INSERT INTO LOG VALUES('22-Mar-16', 16, null, 109, 12);
INSERT INTO LOG VALUES('22-Mar-16', 8, null, 107, 35);

INSERT INTO LOG VALUES('29-Mar-16', 10, null, 105, 40);
INSERT INTO LOG VALUES('29-Mar-16', 7, null, 106, 40);
INSERT INTO LOG VALUES('29-Mar-16', 17, null, 110, 35);
INSERT INTO LOG VALUES('29-Mar-16', 15, null, 111, 35);
INSERT INTO LOG VALUES('29-Mar-16', 19, null, 113, 40);
INSERT INTO LOG VALUES('29-Mar-16', 19, null, 112, 35);
INSERT INTO LOG VALUES('29-Mar-16', 16, null, 109, 35);
INSERT INTO LOG VALUES('29-Mar-16', 8, null, 107, 35);
commit;
