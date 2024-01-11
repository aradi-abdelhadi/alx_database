-- This script creates a table called first_table in the current database in my mySQL server.

USE hbtn_0c_0;
SELECT DATABASE();

CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);
