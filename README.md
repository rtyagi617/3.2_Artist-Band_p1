# 3.2_Artist-Band_p1
In this team-based assignment your team  will demonstrate how to use a SQL script to create tables in MySQL based on a given relational model and  populate those tables with appropriate data. You will then add additional tables and write basic SQL SELECT queries to retrieve information from the database.

This is a team based assignment. Your team task is to:

# Step One: Develop a SQL script that creates all of the tables based on the following relational model (10 points):
artist(id, fname, lname, dob, gender)

band(id,title, year_formed)

member(artistID->, bandID->, date_joined, date_left, instrument)

album(id, title, year_published, bandID->)

song(id, title, length, albumID->)

Notes:

The names of the tables and the columns in your SQL script should be EXACTLY as is given in the above conversion.
If an artist is still in a band, then the date_left column in the member table would be NULL.

Be sure to set up primary and foreign keys correctly and add the “engine=innodb” statement.
You may use Example SQL Script as a guide to help you 

# Step Two: For each of the 5 tables, create your own data to insert into each table according to the following requirements (5 points per table):

There is a minimum of five rows of unique data per table unless otherwise specified.
One band must have at least four artists, and one of those artists left and rejoined the band after 12 years.

One artist must have been in three bands at different times, and another artist must still be in two bands at once.
All bands must have at least two albums with three bands having more than two albums.
At least two female artists must have two or more albums in the same band.

Each album must have 3-5 songs.

At least 4 songs must be more than 5 minutes long.
Notes:

Make sure to add your INSERT queries into the SQL script.
Download and complete the Assignment32Data.doc file and submit it with your assignment. This will assist the grader in validating that your data meets the above requirement.

# Step Three: Add the following  SELECT queries at the bottom of the SQL script. (5 points each)

Choose a year. Return the titles of all albums released that year by any band. Make sure there is at least 1 album returned.
Return the band name, album title, and song title for all songs more than five minutes in length. Make sure there is at least 1 result returned.

Choose a band. Return the names of all songs that the band has released along with the year the album containing the song was released.
