-- This script lists all the tables of a database in my MySQL server.

-- Create the new database
CREATE DATABASE IF NOT EXISTS holbteron_0;
USE holbteron_0;

-- Create tables
CREATE TABLE IF NOT EXISTS holbteron_1 (id INT, name VARCHAR(50));
CREATE TABLE IF NOT EXISTS holbteron_2 (id INT, data VARCHAR(50));

-- List tables in the current database
SHOW TABLES;
