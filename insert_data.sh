#!/bin/bash

# Script to insert data from courses.csv and students.csv into students database

PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"
echo $($PSQL "TRUNCATE students, majors, courses, majors_courses")

cat courses_test.csv | while IFS="," read MAJOR COURSE
do
  if [[ $MAJOR != "major" ]]
  then
    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")

    # if not found
    if [[ -z $MAJOR_ID ]]
    then
      # insert major
      INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")
      if [[ $INSERT_MAJOR_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into majors, $MAJOR
      fi

      # get new major_id
      MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi

    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found
    if [[ -z $COURSE_ID ]]
    then
      # insert course
      INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")
      if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
       then
        echo Inserted into courses, $COURSE
       fi

      # get new course_id
      COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
    fi

    # insert into majors_courses
     INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")
     if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into majors_courses, $MAJOR : $COURSE
      fi
   fi
done


#./insert_data.sh
#TRUNCATE TABLE
#Inserted into majors, Database Administration
#Inserted into courses, Data Structures and Algorithms
#Inserted into majors_courses, Database Administration : Data Structures and Algorithms
#Inserted into majors, Web Development
#Inserted into courses, Web Programming
#Inserted into majors_courses, Web Development : Web Programming
#Inserted into courses, Database Systems
#Inserted into majors_courses, Database Administration : Database Systems
#Inserted into majors, Data Science
#Inserted into majors_courses, Data Science : Data Structures and Algorithms


#"Truncate" generally means to shorten something by cutting off a part of it. In different contexts, it can refer to:
#Mathematics: Reducing a number to a specified number of decimal places without rounding. For example, truncating 3.14159 to two decimal places would give you 3.14.
#Data Management: Removing records or data from a database table, often done to clear all entries quickly without deleting the table itself.
#General Usage: Cutting off or shortening text, phrases, or even physical objects.

#students=> SELECT * FROM majors;
                   
#+----------+-------------------------+
#| major_id |          major          |
#+----------+-------------------------+
#|       21 | Database Administration |
#|       22 | Web Development         |
#|       23 | Data Science            |
#+----------+-------------------------+

#+-----------+--------------------------------+
#| course_id |             course             |
#+-----------+--------------------------------+
#|         8 | Data Structures and Algorithms |
#|         9 | Web Programming                |
#|        10 | Database Systems               |
#+-----------+--------------------------------+

#+----------+-----------+
#| major_id | course_id |
#+----------+-----------+
#|       21 |         8 |
#|       22 |         9 |
#|       21 |        10 |
#|       23 |         8 |
#+----------+-----------+