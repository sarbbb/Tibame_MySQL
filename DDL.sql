CREATE TABLE study  #建置資料表 先寫欄位名稱再寫dtype
(
	ID NUMERIC(10,0) PRIMARY KEY,
    STUDENT_NAME VARCHAR(255)
);
DROP TABLE study;  #刪除資料表
TRUNCATE TABLE study;  #刪除資料表
DELETE FROM study;  #刪除資料表 # MySQL預設safe mode，沒有下where條件無法執行此語句ALTER，需要到Edit->Preferences->SQL Editor->Other 把Safe Updates的勾勾給取消

/*
DELETE FROM table_name，是DML語法，主要用於刪除表內的records，沒有下where條件就是刪除整張表的records
*/
/*
相同點：drop、delete、truncate 都是刪除表的內容。
不同點：
•	delete：刪除表的內容，表的結構還存在，不釋放空間，可以回滾恢復；
•	drop：刪除表內容和結構，釋放空間，沒有備份表之前要慎用；
•	truncate：刪除表的內容，表的結構存在，可以釋放空間,沒有備份表之前要慎用；

執行速度：drop > truncate > delete

資料參考：https://www.runoob.com/
*/

CREATE TABLE GEOGRAPHY (  
	GEOGRAPHY_ID NUMERIC (10,0) PRIMARY KEY, 
	REGION_NAME  VARCHAR(255)
);

CREATE TABLE STORE_INFORMATION(
	STORE_ID   NUMERIC (10,0) PRIMARY KEY,
	STORE_NAME VARCHAR(255),
	SALES      NUMERIC (10,0) CHECK (SALES > 0),
	STORE_DATE datetime,
-- 	GEOGRAPHY_ID NUMERIC(10,0) REFERENCES GEOGRAPHY(GEOGRAPHY_ID)
 	GEOGRAPHY_ID NUMERIC (10,0),
 	CONSTRAINT CONSTRAINT_GEOGRAPHY_ID FOREIGN KEY (GEOGRAPHY_ID) REFERENCES GEOGRAPHY (GEOGRAPHY_ID)
);
