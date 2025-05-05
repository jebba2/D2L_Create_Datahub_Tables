# D2L_Create_Datahub_Tables
The create statements for MySQL to create Datahub Tables


As D2L only provides the ERD for the tables and no create templates, nor including the types and sizes via the API.  Here are the MySQL Create statements for the tables. 

You may notices that each table file has two create statements (table and table_LOAD), we found that it was quicker to import the csv files into the table without keys (table_LOAD) and then import from that table into the main table (table) using import and update on duplicate key mysql command.

INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...)
AS new_data -- Row alias
ON DUPLICATE KEY UPDATE
  column1 = new_data.column1,
  column2 = new_data.column2 + 1;
