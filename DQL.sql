SELECT STORE_NAME 
FROM store_information  -- 最基本的查詢語法

SELECT DISTINCT STORE_NAME  -- 「DISTINCT」去除重覆值，GROUP BY也可以做到一樣的效果
FROM store_information

/*
1.以一筆Records資料做為去重覆的依據
2. DISTINCT 一句語法只能下一次
3. DISTINCT 只能下在欄位的最前面 
 */
SELECT DISTINCT STORE_ID,STORE_NAME  
FROM store_information