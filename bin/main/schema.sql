CREATE TABLE CUSTOMER (CUSTOMER_ID int, CUSTOMER_NAME VARCHAR2(50) );
CREATE TABLE TRANSACTION (TRANSACTION_ID int,CUSTOMER_ID int ,TRANSACTION_DATE DATE,AMOUNT int);
INSERT INTO CUSTOMER(CUSTOMER_ID,CUSTOMER_NAME) values (1001,'sriram');
INSERT INTO CUSTOMER(CUSTOMER_ID,CUSTOMER_NAME) values (1002,'sirish');
INSERT INTO CUSTOMER(CUSTOMER_ID,CUSTOMER_NAME) values (1003,'prasad');
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10001,1001,'2023-01-12',55);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10002,1001,'2023-01-01',101);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10003,1001,'2022-12-04',46);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10004,1001,'2023-01-01',150);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10005,1001,'2022-11-04',60);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10006,1001,'2022-10-05',90);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10007,1002,'2023-01-05',70);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10008,1002,'2022-11-27',130);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10009,1002,'2022-12-04',110);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10010,1002,'2022-01-01',60);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10011,1002,'2023-12-27',70);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10012,1002,'2023-01-15',150);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10013,1003,'2022-11-05',120);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10014,1003,'2022-10-27',90);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10015,1003,'2022-11-04',50);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10016,1003,'2022-12-01',80);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10017,1003,'2023-02-14',90);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10018,1003,'2022-11-20',100);
INSERT INTO TRANSACTION(TRANSACTION_ID,CUSTOMER_ID,TRANSACTION_DATE,AMOUNT) VALUES (10019,1003,'2022-12-14',80);
COMMIT;