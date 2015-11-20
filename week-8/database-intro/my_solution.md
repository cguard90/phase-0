1. SElECT * FROM states;
2. SELECT * FROM regions;
3. SELECT DISTINCT state_name, population
   ...> FROM states;
4. SELECT DISTINCT state_name, population
   ...> FROM states
   ...> ORDER BY population DESC;
5. SELECT state_name FROM states
   ...> WHERE region_id = 7;
6.SELECT state_name, population_density
   ...> FROM states
   ...> ORDER BY population_density ASC;
7. SELECT state_name FROM states
   ...> WHERE population BETWEEN 1000000 AND 1500000;
8.SELECT state_name, region_id FROM states
   ...> ORDER BY region_id ASC;
9. SELECT region_name FROM regions
   ...> WHERE region_name LIKE '%central%';
10. SELECT regions.region_name, states.state_name
   ...> FROM regions
   ...> INNER JOIN states
   ...> on regions.id = states.region_id;

![image](https://raw.githubusercontent.com/cguard90/cguard90.github.io/master/imgs/SCHEMA.png)


    What are databases for?
    Databases are for storing data sets.

    What is a one-to-many relationship? A one to many relationship is when an identifier on one table points to a greater data set on another table. In this example it was region ID, Each state was part of a region that was made up of multiple states.

    What is a primary key? What is a foreign key? How can you determine which is which? Foreign key is a key from a different table that is pointed out by a primary key. A primary key is a key for the table you are presently on.

    How can you select information out of a SQL database? What are some general guidelines for that? SELECT * FROM table_name is a general selector. You want to be careful that you select the correct table name, and that the identifier you are trying to use is actually on that table. .schema is a good way to identify what tables and identifiers you are working with.