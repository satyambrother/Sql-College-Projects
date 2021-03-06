
EXAMPLE 
TESTING OF JOIN CONDITION VIDEO 15,16,17,35,36

CREATE TABLE STUDENT(SID INT,SNAME VARCHAR(20),SEMAIL VARCHAR(40),COURCEID INT)
SELECT*FROM STUDENT

CREATE TABLE COURCE(COURCEIDID INT,COURCENAME VARCHAR(20),COURCEFEE DECIMAL(6,2))
UPDATE COURCE SET COURCEFEE=1000 WHERE COURCEFEE IS NULL
INSERT INTO COURCE VALUES(40,'SQL',15000.00)
SP_RENAME 'COURCE.COURCEIDID','COURCEID'

SELECT*FROM STUDENT
SELECT*FROM COURCE

ANCI format join: ( with "on" keyword join condition)(new style format)

SELECT*FROM STUDENT INNER JOIN COURCE ON STUDENT.COURCEID=COURCE.COURCEID

SELECT*FROM STUDENT S LEFT OUTER JOIN COURCE C ON S.COURCEID=C.COURCEID
SELECT*FROM STUDENT S RIGHT OUTER JOIN COURCE C ON S.COURCEID=C.COURCEID

SELECT*FROM STUDENT CROSS JOIN COURCE

SELECT*FROM STUDENT S FULL  OUTER JOIN COURCE C ON S.COURCEID=C.COURCEID

NON ASCII format join:(with "where" keyword join  condition)( old style format) 

SELF JOIN  IT IS ONLY POSSIBLE WITH THE HELP OF ALIAS NAME THIS JOIN WORK ON SELF TABLE

SELECT*FROM EMP1
UPDATE EMP1 SET SALARY=4000 WHERE EID=127

SELECT*FROM EMP1 WHERE NAME='SATYAM'

SELECT*FROM EMP1 WHERE SALARY=SALARY

SELECT*FROM EMP1 E1,EMP1 E2 WHERE E1.SALARY=E2.SALARY AND E2.NAME='SATYAM'

                              ---JOIN AND ITS TYPES--

JOIN --> RETRIVING DATA FROM MULTIPLE  TABLE AT A TIME 

EQUI--JOIN: 1-RETRIVING DATA FROM MULTIPLE TABLE BASED ON AN EQUALITY CONDITION
            2- CANNOT USE THE THE FOLLOWING OPERATOR <,>,<=,>=,!<,!>,!=

NON EQUI--JOIN: 1- RETRIVE DATA FROM MULTIPLE TABLE BASED ON ANY CONDITION EXCEPT EQUAL CONDITION 
                2- CANNOT USE EQUAL(=) OPERATOR 
				3- CAN USE <,>,<=,>=,!<,!>,!=,BETWEEN,AND....

USE MYCLASS

EX:-- 

CREATE TABLE TEST1(SNO INT,NAME VARCHAR(50))
CREATE TABLE TEST2(SNO INT,NAME VARCHAR(50))

SELECT*FROM TEST1
SELECT*FROM TEST2

EQUI JOIN:

SELECT*FROM TEST1,TEST2 WHERE TEST1.SNO=TEST2.SNO

NON EQUI JOIN:
SELECT*FROM TEST1,TEST2 WHERE TEST1.SNO>TEST2.SNO

                               -- WORKING WITH  UNIQUE NULL AND CHECK--

UNIQUE==> RESTRICTED DUPLICATE DATA  BUT ACCEPTED NULL INTO COLUMN

SYNTAX: < COLUMN NAME > <DATA TYPE>[SIZE] UNIQUE

CREATE TABLE TEST3(SNO INT UNIQUE,LOCATION VARCHAR(40) UNIQUE)

TESTING:

INSERT INTO TEST3 VALUES(101,'GZP')

INSERT INTO TEST3 VALUES(101,'HYD')

INSERT INTO TEST3 VALUES(102,'GZB')

INSERT INTO TEST3 VALUES(NULL,NULL)

SELECT*FROM TEST3

NOT NULL-- RESTRICTED NULL BUT ACCEPTED DUPLICATE VALUE INTO A COLUMN 

SYNTAX:

<COLUMN NAME> <DATA TYPE>[SIZE] NOT NULL


CREATE TABLE TEST4(SNO INT NOT NULL,LOCATION VARCHAR(40) NOT NULL)

TESTING:


INSERT INTO TEST4 VALUES(101,'GZP')

INSERT INTO TEST4 VALUES(101,'HYD')

INSERT INTO TEST4 VALUES(102,'GZB')

INSERT INTO TEST4 VALUES(NULL,NULL)

SELECT*FROM TEST4

PRIMARY KEY: UNION+NOT NULL

CHECK: TO CHECK VALUE BEFORE  INSERTING INTO A COLUMN 
       APPLY A CONDITION ON COLUMN

SYNTAX:
<COLUMN NAME><DATA TYPE>[SIZE] CHECK(CONDITION)

EXAMPLE:

CREATE TABLE TEST5(EID INT,SALARY MONEY CHECK(SALARY>=5000))

TESTING:

INSERT INTO TEST5 VALUES(101,5000)
INSERT INTO TEST5 VALUES(102,4000)
INSERT INTO TEST5 VALUES(103,25000)



SELECT*FROM TEST5