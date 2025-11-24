📘 Student Attendance Management System

A Web Application built using JSP, JDBC & MySQL

🚀 Project Overview

The Student Attendance Management System is a simple yet efficient web-based application designed to help faculty manage student attendance digitally. It includes features like student registration, login authentication, attendance marking, and viewing attendance records.

The project is developed using:

Frontend: JSP (Java Server Pages)

Backend: Java (JDBC)

Database: MySQL

Server: Apache Tomcat

🧩 Features / Modules
🔐 1. Login Module

Secure login for faculty/admin.

Credentials validated using JDBC queries.

Prevents unauthorized access.

🧍‍♂️🧍‍♀️ 2. Student Registration

Add student details (Name, Roll No, Branch, Year).

Stores data in MySQL database.

📊 3. Dashboard

User-friendly dashboard showing quick actions:

Add New Student

Mark Attendance

View Attendance

Show Records

Logout

📝 4. Attendance Marking Module

Faculty selects a date and marks each student as Present or Absent.

Attendance is inserted into the database using PreparedStatement.

📅 5. Attendance Records

View attendance by:

Date

Student

Entire class

Displays clean tabular data fetched from MySQL.

💾 6. Database Operations (JDBC)

Uses:

PreparedStatement

SQL Insert/Select queries

Proper exception handling

No ORM → Pure JDBC approach.

🚪 7. Logout Module

Secure session handling.

Prevents re-entry without login.

🛠️ Tech Stack
Category	Technology
Language	Java
Frontend	JSP
Backend	JDBC
Database	MySQL
Server	Apache Tomcat
IDE Used	IntelliJ IDEA

🗄️ Database Schema
Table: students
Column	Type
roll_no	INT (PK)
name	VARCHAR
branch	VARCHAR
year	VARCHAR
Table: attendance
Column	Type
id	INT (PK)
roll_no	INT (FK)
date	DATE
status	VARCHAR (Present/Absent)


🎯 Future Enhancements

Admin Role Management

Export Attendance to Excel

Student Login

Chart-based attendance analytics

🤝 Team Members

Amrendra Singh (Project Leader)

Alok Kumar Mishra 

📜 License

This project is for educational purposes (OOPJ Lab CA-2).
