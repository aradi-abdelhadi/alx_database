-- this script prints the full description of the table first_table from the database hbtn_0c_0 in my mySQL server.
USE hbtn_0c_0;

SELECT 'Table', 'Create Table';

SELECT TABLE_NAME, CONCAT('CREATE TABLE ', TABLE_NAME, ' (',
    GROUP_CONCAT(CONCAT(COLUMN_NAME, ' ', COLUMN_TYPE, ' ', IF(IS_NULLABLE = 'YES', 'DEFAULT NULL', ''), ',') ORDER BY ORDINAL_POSITION),
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;') AS Create_Table
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table'
GROUP BY TABLE_NAME;
