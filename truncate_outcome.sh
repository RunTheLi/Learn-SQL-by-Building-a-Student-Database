#"Truncate" generally means to shorten something by cutting off a part of it. In different contexts, it can refer to:
#Mathematics: Reducing a number to a specified number of decimal places without rounding. For example, truncating 3.14159 to two decimal places would give you 3.14.
#Data Management: Removing records or data from a database table, often done to clear all entries quickly without deleting the table itself.
#General Usage: Cutting off or shortening text, phrases, or even physical objects.

./insert_data.sh
TRUNCATE TABLE
Inserted into majors, Database Administration
Inserted into courses, Data Structures and Algorithms
Inserted into majors_courses, Database Administration : Data Structures and Algorithms
Inserted into majors, Web Development
Inserted into courses, Web Programming
Inserted into majors_courses, Web Development : Web Programming
Inserted into courses, Database Systems
Inserted into majors_courses, Database Administration : Database Systems
Inserted into majors, Data Science
Inserted into majors_courses, Data Science : Data Structures and Algorithms
Inserted into majors, Network Engineering
Inserted into courses, Computer Networks
Inserted into majors_courses, Network Engineering : Computer Networks
Inserted into courses, SQL
Inserted into majors_courses, Database Administration : SQL
Inserted into courses, Machine Learning
Inserted into majors_courses, Data Science : Machine Learning
Inserted into courses, Computer Systems
Inserted into majors_courses, Network Engineering : Computer Systems
Inserted into majors, Computer Programming
Inserted into majors_courses, Computer Programming : Computer Networks
Inserted into courses, Web Applications
Inserted into majors_courses, Database Administration : Web Applications
Inserted into majors, Game Design
Inserted into courses, Artificial Intelligence
Inserted into majors_courses, Game Design : Artificial Intelligence
Inserted into courses, Python
Inserted into majors_courses, Data Science : Python
Inserted into courses, Object-Oriented Programming
Inserted into majors_courses, Computer Programming : Object-Oriented Programming
Inserted into majors, System Administration
Inserted into majors_courses, System Administration : Computer Systems
Inserted into courses, Calculus
Inserted into majors_courses, Game Design : Calculus
Inserted into majors_courses, Web Development : Data Structures and Algorithms
Inserted into majors_courses, Data Science : Calculus
Inserted into majors_courses, Web Development : Object-Oriented Programming
Inserted into courses, Game Architecture
Inserted into majors_courses, Game Design : Game Architecture
Inserted into majors_courses, System Administration : Computer Networks
Inserted into courses, Algorithms
Inserted into majors_courses, Game Design : Algorithms
Inserted into courses, UNIX
Inserted into majors_courses, System Administration : UNIX
Inserted into courses, Server Administration
Inserted into majors_courses, System Administration : Server Administration
Inserted into majors_courses, Computer Programming : Computer Systems
Inserted into majors_courses, Computer Programming : Python
Inserted into courses, Network Security
Inserted into majors_courses, Network Engineering : Network Security
Inserted into majors_courses, Web Development : Web Applications
Inserted into majors_courses, Network Engineering : Algorithms
Inserted into students, Rhea Kellems
Inserted into students, Emma Gilbert
Inserted into students, Kimberly Whitley
Inserted into students, Jimmy Felipe
Inserted into students, Kyle Stimson
Inserted into students, Casares Hijo
Inserted into students, Noe Savage
Inserted into students, Sterling Boss
Inserted into students, Brian Davis
Inserted into students, Kaija Uronen
Inserted into students, Faye Conn
Inserted into students, Efren Reilly
Inserted into students, Danh Nhung
Inserted into students, Maxine Hagenes
Inserted into students, Larry Saunders
Inserted into students, Karl Kuhar
Inserted into students, Lieke Hazenveld
Inserted into students, Obie Hilpert
Inserted into students, Peter Booysen
Inserted into students, Nathan Turner
Inserted into students, Gerald Osiki
Inserted into students, Vanya Hassanah
Inserted into students, Roxelana Florescu
Inserted into students, Helene Parker
Inserted into students, Mariana Russel
Inserted into students, Ajit Dhungel
Inserted into students, Mehdi Vandenberghe
Inserted into students, Dejon Howell
Inserted into students, Aliya Gulgowski
Inserted into students, Ana Tupajic
Inserted into students, Hugo Duran

#students=> SELECT * FROM students;
                   
+------------+------------+--------------+----------+-----+
| student_id | first_name |  last_name   | major_id | gpa |
+------------+------------+--------------+----------+-----+
|          6 | Rhea       | Kellems      |       36 | 2.5 |
|          7 | Emma       | Gilbert      |          |     |
|          8 | Kimberly   | Whitley      |       37 | 3.8 |
|          9 | Jimmy      | Felipe       |       36 | 3.7 |
|         10 | Kyle       | Stimson      |          | 2.8 |
|         11 | Casares    | Hijo         |       41 | 4.0 |
|         12 | Noe        | Savage       |          | 3.6 |
|         13 | Sterling   | Boss         |       41 | 3.9 |
|         14 | Brian      | Davis        |          | 2.3 |
|         15 | Kaija      | Uronen       |       41 | 3.7 |
|         16 | Faye       | Conn         |       41 | 2.1 |
|         17 | Efren      | Reilly       |       37 | 3.9 |
|         18 | Danh       | Nhung        |          | 2.4 |
|         19 | Maxine     | Hagenes      |       36 | 2.9 |
|         20 | Larry      | Saunders     |       38 | 2.2 |
|         21 | Karl       | Kuhar        |       37 |     |
|         22 | Lieke      | Hazenveld    |       41 | 3.5 |
|         23 | Obie       | Hilpert      |       37 |     |
|         24 | Peter      | Booysen      |          | 2.9 |
|         25 | Nathan     | Turner       |       36 | 3.3 |
|         26 | Gerald     | Osiki        |       38 | 2.2 |
|         27 | Vanya      | Hassanah     |       41 | 4.0 |
|         28 | Roxelana   | Florescu     |       36 | 3.2 |
|         29 | Helene     | Parker       |       38 | 3.4 |
|         30 | Mariana    | Russel       |       37 | 1.8 |
|         31 | Ajit       | Dhungel      |          | 3.0 |
|         32 | Mehdi      | Vandenberghe |       36 | 1.9 |
|         33 | Dejon      | Howell       |       37 | 4.0 |
|         34 | Aliya      | Gulgowski    |       42 | 2.6 |
|         35 | Ana        | Tupajic      |       38 | 3.1 |
|         36 | Hugo       | Duran        |          | 3.8 |
+------------+------------+--------------+----------+-----+
(31 rows)

#SELECT * FROM majors;
+----------+-------------------------+
| major_id |          major          |
+----------+-------------------------+
|       36 | Database Administration |
|       37 | Web Development         |
|       38 | Data Science            |
|       39 | Network Engineering     |
|       40 | Computer Programming    |
|       41 | Game Design             |
|       42 | System Administration   |
+----------+-------------------------+
(7 rows)

#SELECT* FROM courses;

+-----------+--------------------------------+
| course_id |             course             |
+-----------+--------------------------------+
|        23 | Data Structures and Algorithms |
|        24 | Web Programming                |
|        25 | Database Systems               |
|        26 | Computer Networks              |
|        27 | SQL                            |
|        28 | Machine Learning               |
|        29 | Computer Systems               |
|        30 | Web Applications               |
|        31 | Artificial Intelligence        |
|        32 | Python                         |
|        33 | Object-Oriented Programming    |
|        34 | Calculus                       |
|        35 | Game Architecture              |
|        36 | Algorithms                     |
|        37 | UNIX                           |
|        38 | Server Administration          |
|        39 | Network Security               |
+-----------+--------------------------------+
(17 rows)

#SELECT * FROM majors_courses;

+----------+-----------+
| major_id | course_id |
+----------+-----------+
|       36 |        23 |
|       37 |        24 |
|       36 |        25 |
|       38 |        23 |
|       39 |        26 |
|       36 |        27 |
|       38 |        28 |
|       39 |        29 |
|       40 |        26 |
|       36 |        30 |
|       41 |        31 |
|       38 |        32 |
|       40 |        33 |
|       42 |        29 |
|       41 |        34 |
|       37 |        23 |
|       38 |        34 |
|       37 |        33 |
|       41 |        35 |
|       42 |        26 |
|       41 |        36 |
|       42 |        37 |
|       42 |        38 |
|       40 |        29 |
|       40 |        32 |
|       39 |        39 |
|       37 |        30 |
|       39 |        36 |
+----------+-----------+
(28 rows)