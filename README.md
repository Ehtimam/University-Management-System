# University-Management-System
University Management System or UMS is a system that is build for the general purpose use in an educational institute  to make boring paperwork simpler and easier. This University Management System software is a management application that handles many university works. It starts with a login system where admin can login and can register new teachers and students. Admin also can add, delete and update the details of any teacher/student. There is an option to manage the attendance of teacher and student. The stuff can manage the attendance of the students of their corresponding subject. Admin also can handle the students result in this application. Admin also can manage the fee details of students. At last there is an exit option.

Project is build in java language with MySQL database. In order to set it up in your pc you first need to have Apachi Netbeans 12 or equvalent java programming enviornment. Create the database on a MySQL server. (WAMP or XAMP). Establish the connection of database and main code in conn.java; 

Below described how every class works:

conn.java---> It is a class that mainly connect database and main code.
starting.java---> Loading screen to start the system. Maximum loading time is 7 nm. From here user will redirected to ---> 
join.java ---> There are two option here either login or create a new accout; login.java & createAC.java;

if chosen login.java---> System login. Users need to put username and password. 
If you are not registerd in the system you will get incorrect username and password.
If you want to create an account you can directly go from here to createAC or return to join.java.

else chosen createAC.java---> You can create an account here. return to login.java;


