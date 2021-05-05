# Growing_For_Good
Repository for Spring Quarter 2021 - INFO 4140 - Section 2 - Databases Project - Group 4 - Growing For Good


Private repository just for our group's project.

Project Part 2: Physical Database Implementation and Stored Procedures 

Instructions:
1.	Part 1 amendments. Make the needed modifications to your database diagram and data dictionary from Part 1 faculty critique and/or (minor) changes you want to include.
2.	Physical design, implementation, and loading (data). Using the project ERD, create the tables, fields, and relationships using Microsoft SQL Server.  Populate tables with functional data, testing the viability of relationships and enforcing referential integrity (a minimum of 10 records for most tables expected). All tables, keys, relationships, constraints, and any default values must be included.
3.	Relationship diagram from SQL Server. Create a relationship diagram in SQL Server. Tables need to be arranged for readability.  
4.	SQL stored procedures (queries).  SQL Stored Procedures (queries) that address the business needs that drove the development of the database in the first place, including at least one transaction query. Create and save the stored procedures outlined in Part 1 (yes, modifications can be made if needed). Make sure these are all commented appropriately including what question the query is trying to ‘answer’. The more sophisticated, the better. 
a.	A minimum of 5 queries are required.
b.	At least 1 query utilizing union required.
c.	At least 1 query utilizing a nested query / sub query required.
d.	At least 1 query utilizing parameter(s) required.
5.	Data. The database must be populated with enough data to demonstrate that the SQL queries work, and the data must be such that all privacy/nondisclosure issues are addressed. Fictitious data are acceptable and encouraged.

Deliverables (3 of them!!) to be submitted in Project Part 2 container:  
•	A Word report file (.doc or .docx) with: 
  -- Updated ERD and rules (from Appendix A Part 1)
  -- Updated Data Dictionary (from Appendix B Part 1)
•	A .sql file with all the queries (most likely in C://My Documents/SQL Server Management Studio/). MUST have comments! Most likely in C://My Documents/SQL Server Management Studio/
•	A compressed file folder (.zip ONLY) created using the instructions at the end of this document for ‘Generate a Database Script’. Be sure to follow exactly! 


Instructions to Generate a Database Script 


In SSMS:
-	Right-click on database name
	  -- Select: Tasks
	    --- Select: Generate Scripts
- In: Generate scripts for database objects.
    -- Select: Next
- In: Introduction
    -- Select: Next  (Keep default: Script entire database...)
- In: Specify how scripts should be saved or published
    -- File Name:  Change script.sql to YourTeamName.sql (and remember where you saved it)
    -- Click: Advanced
      --- Types of data to script: Change Schema only to Schema and data
          ---- Note: Types of data to script is the last item in GENERAL (just above TABLE/VIEW                         OPTIONS)
      --- Select: OK
    -- Select: Next
-	Select: Next
